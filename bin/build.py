#!/usr/bin/env python

import re
import os
os.chdir(os.path.dirname(os.path.realpath(__file__)) + '/../')

def directory_row(f):
    return '<li><a href="/%s">%s</a></li>' % (f, os.path.basename(f))

def file_row(f):
    return '<li><a href="/%s">%s</a></li>' % (f, os.path.basename(f))

def list_files(path):
    directories = []
    files = []
    for f in os.listdir(path):
        p = path + '/' + f
        if f == 'index.html':
            continue
        elif os.path.isfile(p):
            files.append(p)
        else:
            list_files(p)
            directories.append(p)

    html = '''
<!doctype html>
<html>
    <head>
        <title>%s</title>
    </head>
    <body>
        <h1>%s</h1>
        <ul>
            <li><a href="..">..</a></li>
            %s
            %s
        </ul>
    </body>
</html>
    ''' % (
            path,
            path,
            ''.join([directory_row(e) for e in natsort(directories)]),
            ''.join([file_row(e) for e in natsort(files)]),
        )

    with open(path + '/index.html', 'w') as output:
        output.write(html)


def natsort(l):
    convert = lambda text: int(text) if text.isdigit() else text.lower()
    alphanum_key = lambda key: [convert(c) for c in re.split('([0-9]+)', key)]
    return sorted(l, key=alphanum_key)

list_files('docs')
