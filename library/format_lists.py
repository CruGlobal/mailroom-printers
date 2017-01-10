#!/usr/bin/python

import json
import re
import yaml

def main():
	module = AnsibleModule(
		argument_spec = dict(
			format_spec = dict(required=True),
			lists = dict(required=True)
		)
	)
	format_spec = module.params.get('format_spec')
	lists = eval(module.params.get('lists'))
	json_lists = json.dumps(lists)
	json_format_spec = json.dumps(format_spec)
	queues = []
	for lista in lists[0]:
		for listb in lists[1]:
			queues.append(format_spec % (lista, listb))
	json_queues = json.dumps(queues)
	module.exit_json(changed=True, queues=queues)

from ansible.module_utils.basic import *
if __name__ == '__main__':
	main()

