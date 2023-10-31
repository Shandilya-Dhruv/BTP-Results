import torch
from torchsummary import summary
from net import Net

pth_dir = 'log/SIRST3/DNANet_LESPS_centroid.pth.tar'
model_name = 'DNANet'
net = Net(model_name=model_name, mode='test').cuda()
net.load_state_dict(torch.load(pth_dir)['state_dict'])
net.eval()
summary(net, input_size = (2, 3, 256, 256), batch_size = -1)

pth_dir = 'log4/SIRST3/DNANet_LESPS_centroid_400.pth.tar'
model_name = 'DNANet'
net = Net(model_name=model_name, mode='test').cuda()
net.load_state_dict(torch.load(pth_dir)['state_dict'])
net.eval()
summary(net, input_size = (2, 3, 256, 256), batch_size = -1)

