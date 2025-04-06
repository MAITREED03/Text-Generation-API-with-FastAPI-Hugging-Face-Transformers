# 🧠 Text Generation API with FastAPI & Hugging Face Transformers

A lightweight, containerized REST API that performs natural language generation using the `google/flan-t5-small` model. This project leverages **FastAPI** for the API backend, **Hugging Face Transformers** for inference, and **Docker** for easy deployment. Ideal for use cases like translation, summarization, Q&A, and more.

---

## 🚀 Demo

> Example Endpoint:  
`GET /generate?text=Translate+to+French:+Hello+World`

> Example Response:
```json
{
  "output": "Bonjour le monde"
}

📦 Tech Stack
FastAPI – modern Python web framework for APIs

Uvicorn – lightning-fast ASGI server

Transformers – Hugging Face pipeline for NLP

PyTorch (CPU) – inference backend

Docker – containerization for deployment

FLAN-T5-small – Google’s fine-tuned instruction-following T5 model

💡 Features
🔗 /generate API endpoint for text-to-text generation

🤖 Pre-loaded LLM pipeline using Hugging Face

🐳 Dockerized for seamless deployment

📄 Auto-generated Swagger UI at /docs

💻 CPU-friendly setup, no GPU required


📂 Project Structure

├── app.py                # FastAPI app
├── requirements.txt      # Python dependencies
├── Dockerfile            # Container setup
├── .dockerignore         #  Docker cleanup
└── README.md             # You're here!


⚙️ Installation & Usage
▶️ Run Locally


# 1. Clone the repository
git clone https://github.com/MAITREED03/Text-Generation-API-with-FastAPI-Hugging-Face-Transformers
cd fastapi-flan-api

# 2. (Optional) Create a virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Start the API
uvicorn app:app --host 0.0.0.0 --port 7860

Go to:
https://moitride-text2text-with-dockers.hf.space/docs#/  ##to test the Swagger UI

🐳 Run with Docker
# Build the image
docker build -t fastapi-flan-api .

# Run the container
docker run -p 7860:7860 fastapi-flan-api

☁️ Deploy on Hugging Face Spaces
Create a new Space (SDK: FastAPI)

Upload:

app.py

requirements.txt

Hugging Face will build and launch the app automatically.

✍️ Sample Prompts
Translate to French: I love machine learning

Summarize: Artificial Intelligence is a rapidly growing field...

Answer the question: Who is the President of the United States?


📄 License
MIT License — feel free to fork, use, and build on it.


👩‍💻 Author
Moitri De
Data Scientist | NLP Enthusiast | AI Explorer
https://www.linkedin.com/in/moitri-d-8aabba214/