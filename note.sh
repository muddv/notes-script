args=("$@")
DATE=`date +%d-%m-%y`

for ((i=0; i<$#; i++))
do
   note_name+=-${args[i]}
done

if [ $# == 1 ]; then 
note_name=-${args[0]}
fi

note_name=${DATE}${note_name}.md

touch ~/Documents/notes/${note_name}
nvim ~/Documents/notes/${note_name}
