import os
import json
import itertools
import copy

def check_path(path):
	dir = '/'.join([x for x in path.replace('\\', '/').split('/') if '.' not in x])
	if not os.path.exists(dir):
		os.makedirs(dir)
	return path
def create_file(path):
	return open(check_path(path), 'w')

def custom_rotation(part, matrix):
	result = [[0, 0, 0], [0, 0, 0]]
	for i in range(len(matrix)):
		if matrix[i] > 0:
			result[0][i] = part[0][matrix[i] - 1]
			result[1][i] = part[1][matrix[i] - 1]
		elif matrix[i] < 0:
			result[0][i] = -part[0][-matrix[i] - 1]
			result[1][i] = -part[1][-matrix[i] - 1]
	return result

def rotate(part, block_state):
	result = [[0, 0, 0], [0, 0, 0]]
	for (name, state) in zip(block_state[0], block_state[1]):
		if name in command['matrix_map'] and state in command['matrix_map'][name]:
			matrix = command['matrix_map'][name][state]
			result = custom_rotation(part, matrix)
			part = result
	
	# if n < 0:
	#  part[0][n] = 16 + part[1][n]
	#  part[1][n] = 16 + part[0][n]
	
	temp = copy.deepcopy(result)
	for n in range(3):
		if result[1][n] < 0:
			result[0][n] = 16 + temp[1][n]
			result[1][n] = 16 + temp[0][n]

	return result

def calculate(model, permut_name, permut_state, block):
	result = []
	block_state = '[' + ', '.join([name + '=' + state for (name, state) in zip(permut_name, permut_state)]) + ']' if len(permut_name) > 0 else ''
	for part in model:
		line = [command['block']['start'].replace('<block>', block['id'] + block_state)]
		rotated_part = rotate(part, (permut_name, permut_state))
		for i in range(3):
			re_order = {rotated_part[0][i] * 10, rotated_part[1][i] * 10}
			if not (re_order - {0, 160}) == set():
				re_order = sorted(re_order)
				line.append(command['block']['bound'][i].replace('<bound>', '..'.join([str(x) for x in re_order])))
		line.append(command['block']['end'])
		result.append(' '.join(line))
	return '\n'.join(result)

def accurate_hitbox():
	block_list = json.load(open('block_list.json'))
	for block in block_list['values']:
		result = []
		permut_states = {'name': [], 'state': []}
		for state in block['block_state']:
			temp = []
			for i in block['block_state'][state]:
				temp.append(i)
			permut_states['state'].append(temp)
			permut_states['name'].append(state)
		model = [[x['from'], x['to']] for x in json.load(open(block['model']))['elements']]
		if 'rotation' in block:
			temp = []
			for part in model:
				temp.append(custom_rotation(part, block['rotation']))
			model = temp
		for permut_state in itertools.product(*permut_states['state']):
			r = calculate(copy.deepcopy(model), tuple(permut_states['name']), permut_state, block)
			result.append(r)

		with create_file('./output/block/' + block['out'] + '.mcfunction') as f:
			f.write('\n'.join(result))
	
	entity_list = json.load(open('entity_list.json'))
	for key in entity_list:
		entity = entity_list[key]
		lines = [command['entity']['start']]
		for axis in command['entity']['bound']:
			bound = '..'.join([str(-entity[axis] // 2), str(entity[axis] // 2)])
			lines.append(command['entity']['bound'][axis].replace('<bound>', bound))
		lines.append(command['entity']['end'])

		with create_file('./output/entity/' + key + '.mcfunction') as f:
			f.write(' '.join(lines))
		
command = json.load(open('command.json'))
accurate_hitbox()