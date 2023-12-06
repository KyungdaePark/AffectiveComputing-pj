

eval:
	python main.py --data /home/sonic/pkd/face_test --evaluate /home/sonic/pkd/POSTER_bi/checkpoint/model.pth
train : 
	python main.py --data /home/sonic/pkd/face --data_type face --lr 1e-4 --batch-size 32 --epochs 200 --gpu 3 --resume /home/sonic/pkd/POSTER_bi/checkpoint/model.pth

