for file in /home/rolle/wp/TAUSTAT/*
do
  echo "Adding $file to colorscheme supported wp's.."
  ~/wp/wp "add $file" 
done
