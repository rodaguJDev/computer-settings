#! /bin/sh

# Material de apoio
# https://askubuntu.com/a/1104893
# https://icculus.org/pipermail/openbox/2008-April/005611.html

terminal_wm_class="gnome-terminal"
terminal_exec="gnome-terminal"

# -z : "se a string for vazia"
# wmctrl -l : "listar janelas do wmctrl"
# wmctrl -x : "incluir nomes de classes na lista"
if [ -z "`wmctrl -lx | grep $terminal_wm_class`" ]; then
    $terminal_exec &
    exit;
fi;

# wmctrl -d : "listar workspaces gnome, marcando com * a workspace atual"
# cut -d : "basicamente um .split() do javascript/python"
# cut -f : "id de qual parte da string que sofreu .split() devemos exibir"
current_workspace_id=`wmctrl -d | grep '*' | cut -d ' ' -f 1`
term_on_this_desk=`wmctrl -lx | grep "$current_workspace_id[ ]*$terminal_wm_class" | cut -d ' ' -f 1`

# -n : "se a string não for vazia"
if [ -n "$term_on_this_desk" ]; then
    # -a : "colocar janela em foco"
    # -i : "utilizando ID como identificador"
    wmctrl -i -a $term_on_this_desk
else
    # $term_on_this_desk é falso, ou seja, existe um terminal mas ele não está na area de trabalho atual
    # -x : neste contexto, "utilizando nome (class) como identificador"
    wmctrl -x -a $terminal_wm_class
fi;
