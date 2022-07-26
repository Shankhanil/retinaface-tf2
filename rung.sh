# clone repo

git clone https://github.com/Shankhanil/retinaface-tf2.git

# create dataset
!unzip -n /content/drive/MyDrive/WIDER_DATASET/WIDER_train.zip -d /content/retinaface-tf2/data
!unzip -n /content/drive/MyDrive/WIDER_DATASET/WIDER_val.zip -d /content/retinaface-tf2/data
!unzip -n /content/drive/MyDrive/WIDER_DATASET/WIDER_labels.zip -d /content/retinaface-tf2/labels
!cp -n /content/retinaface-tf2/labels/train/label.txt /content/retinaface-tf2/data/WIDER_train/label.txt
!cp -n /content/retinaface-tf2/labels/val/label.txt /content/retinaface-tf2/data/WIDER_val/label.txt
!cp /content/drive/MyDrive/WIDER_DATASET/WIDER_train_bin.tfrecord /content/retinaface-tf2/data/widerface_train_bin.tfrecord
!rm -r /content/retinaface-tf2/labels

# install packages
pip install -r requirements.txt

# train model
!python train.py --cfg_path="./configs/retinaface_res50.yaml" --gpu=0

