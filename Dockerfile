## Use the official python 3.9 image
FROM python:3.9


## Set the working directory to /code
WORKDIR /code


## Copy the current directory contents into the container at /code
COPY ./requirements.txt /code/requirements.txt


RUN pip install --no-cache-dir torch==2.0.1+cpu -f https://download.pytorch.org/whl/torch_stable.html \
    && pip install --no-cache-dir --upgrade -r /code/requirements.txt


#set up a new user named "user"
RUN useradd user
#Switch to the "user" user
USER user

# Set home to the user's home directory
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH


# Set the working directory to the user's  home directory
WORKDIR $HOME/app

# Copy the current directory contents into the container at $HOME/app setting the owner to the user
COPY --chown=user . $HOME/app


## Start the FASTAPI App on port 7860
CMD ["uvicorn","app:app", "--host", "0.0.0.0", "--port", "7860"]