#! /usr/bin/env python
# vim: set fileencoding=utf-8: set encoding=utf-8:

def match(command, settings):
    return ('nothing to commit, working directory clean' in command.stdout)

def get_new_command(command, settings):
    return command.script + ' --amend'

enabled_by_default = True

