#!/bin/bash

python main.py --dataset cifar10 --model resnet20 --model-class lottery --optimizer sgd --train-batch-size 128 --lr 0.1 --lr-drops 80 120 --weight-decay 1e-4  --post-epochs 160 --pruner grasp --prune-epochs 1  --experiment multishot --expid GraSP-resnet20 --level-list 1 --compression-list 18 --prune-train-mode True

python main.py --dataset cifar10 --model resnet20 --model-class lottery --optimizer sgd --train-batch-size 128 --lr 0.1 --lr-drops 80 120 --weight-decay 1e-4  --post-epochs 160 --pruner NTKSAP --prune-epochs 20  --experiment multishot --expid NTKSAP-resnet20 --level-list 1 --compression-list 18 --prune-train-mode True --ntksap_R 5

python main.py --dataset cifar10 --model resnet20 --model-class lottery --optimizer sgd --train-batch-size 128 --lr 0.1 --lr-drops 80 120 --weight-decay 1e-4  --post-epochs 160 --pruner snip --prune-epochs 1  --experiment multishot --expid GraSP-resnet20 --level-list 1 --compression-list 18 --prune-train-mode True

#python main.py --dataset cifar10 --model resnet20 --model-class lottery --optimizer sgd --train-batch-size 128 --lr 0.1 --lr-drops 80 120 --weight-decay 1e-4  --post-epochs 160 --pruner NTKSAP --prune-epochs 20  --experiment multishot --expid NTKSAP-resnet20 --level-list 1 --compression-list 16 14 12 10 8 6 4 2 --prune-train-mode True --ntksap_R 5


