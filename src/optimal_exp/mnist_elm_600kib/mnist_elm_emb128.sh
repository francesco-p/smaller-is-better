#!/bin/sh

MEM=1528
EMB=128

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 0 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name mnist_600kib_elm_${EMB}_s0

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 1 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name mnist_600kib_elm_${EMB}_s1

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 2 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name mnist_600kib_elm_${EMB}_s2

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 3 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name mnist_600kib_elm_${EMB}_s3

python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed 4 --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name mnist_600kib_elm_${EMB}_s4


echo "####### mnist_600kib_elm_${EMB}_s####### "
for s in 0 1 2 3 4 
do
    echo "~.~.~.~. ${s} ~.~.~.~."
    tail -1 "../../../logs/mnist_600kib_elm_${EMB}_s${s}/checkpoint.log"
done
