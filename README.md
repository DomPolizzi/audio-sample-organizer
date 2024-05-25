# Audio Sample Organizer
This project is hopefully to become a solution to mine and millions of others problem of managing Audio Samples for music production

During the testing stage, I am utilizing `jupyter notebook` FYI.


## Environment setup & Helpful Links:
- Setting up VENV Kernel: https://saturncloud.io/blog/how-to-add-a-python-3-kernel-to-jupyter-ipython/

- Installing and creating Jupyter Service: https://www.howtoforge.com/guide-to-install-jupyterlab-on-debian-12/


### Dev Notes:

#### 5-2-24
- TensorFlow does not support WAVE Files above 16-bit. Convert notebook was supposed to handle audio conversion, but fails for some reason. moving to Pytorch. - 


#### 5-14-24
- using the UrbanSound8K dataset  https://urbansounddataset.weebly.com/urbansound8k.html | Free to download, but added to the `.gitignore` since its huge
- moved most of the testing/ old notebooks to the `notebooks/` 
- Since moving to `Pytorch`, there have been hurrdles in getting this to even detect the difference in samples, if only Tensorflow wasn't so picky . . .
- TorchAudio Transforms:  https://pytorch.org/audio/stable/transforms.html

#### 5-18-24
- For debugging, ensure you set the .vscode/launch.json as follows:
```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python Debugger: Current File",
            "type": "debugpy",
            "request": "launch",
            "program": "${file}",
            "console": "integratedTerminal",
            "cwd": "${fileDirname}",
            "purpose":["debug-in-terminal"]
        }
    ]
}
```

#### 5-24-24
- Model c_n_n.pth is not identifying correctly.