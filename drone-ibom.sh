#!/bin/sh
set -x
tree /usr/src
echo
/usr/bin/xvfb-run --server-args="-screen 0 1024x768x24" /usr/bin/python2 /usr/src/InteractiveHtmlBom/generate_interactive_bom.py --no-browser --dest-dir $PLUGIN_BASE/$PLUGIN_FOLDER/$PLUGIN_PROJECT $PLUGIN_PROJECT.kicad_pcb
