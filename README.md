<div align="center">
  
  <img src="https://img.icons8.com/color/120/000000/artificial-intelligence.png" alt="AI Interview Simulator Logo"/>
  
  <h1>🚀 AI Interview Simulator</h1>
  
  <p>
    <b>A FAANG-level, full-stack AI interview preparation platform designed to simulate high-pressure technical and behavioral interviews.</b>
  </p>

  <p>
    <a href="#features">Features</a> •
    <a href="#tech-stack">Tech Stack</a> •
    <a href="#architecture">Architecture</a> •
    <a href="#installation">Installation</a> •
    <a href="#environment-variables">Environment Variables</a> •
    <a href="#contributing">Contributing</a>
  </p>

  ![Next.js](https://img.shields.io/badge/Next.js-14-black?style=for-the-badge&logo=next.js)
  ![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white)
  ![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)
  ![MongoDB](https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white)
  ![Gemini AI](https://img.shields.io/badge/Google_Gemini-4285F4?style=for-the-badge&logo=google&logoColor=white)

</div>

---

## 📖 Overview

The **AI Interview Simulator** is not just another chatbot. It is a highly interactive, multimodal platform that mirrors the exact environment of top-tier (FAANG) software engineering interviews. 

By combining **Google Gemini 1.5 Multimodal AI** with real-time browser APIs and code execution engines, this platform evaluates candidates on code optimization, system design architecture, and behavioral communication.

---

## 🌟 Key Features

### 💻 1. Real-Time Coding Environment (DSA)
- **Multi-language Support:** Write in Python, C++, Java, JavaScript, Go, or Rust using an integrated Monaco Editor.
- **Real Code Execution:** Live compilation and test-case validation via the Judge0 API.
- **AST Static Analysis (Big-O):** The AI acts as an Abstract Syntax Tree (AST) analyzer to determine your *true* Time & Space complexity, aggressively penalizing nested loops and inefficient memory allocations.

### 🧠 2. Resume Parsing & RAG (Hyper-Personalization)
- Upload your PDF resume during the setup wizard.
- The AI uses Multimodal Vision capabilities to read your resume and tailors the interview questions to your exact background, past projects, and tech stack.

### 🎨 3. System Design Whiteboard + Vision AI
- An interactive **Excalidraw** whiteboard is built directly into the System Design workspace.
- When you submit an architecture diagram, the app takes a base64 snapshot and passes it to **Gemini Vision**, which evaluates your drawing for single points of failure, missing components (like Load Balancers or Caches), and horizontal scalability.

### 🎤 4. Real-Time Voice Interaction (Zoom-like Experience)
- **Speech-to-Text:** Answer behavioral (HR) questions using your microphone via the browser's native `SpeechRecognition` API.
- **Text-to-Speech:** The AI interviewer natively speaks the questions and follow-ups out loud using `window.speechSynthesis`.

### 📊 5. Full-Stack MongoDB Analytics Dashboard
- All interview session results, scores, grades, and granular feedback are permanently saved to a **MongoDB** cluster via Mongoose.
- View your progress on a premium, glassmorphism dashboard powered by **Recharts** (featuring Radar skill breakdowns and chronological progression charts).

---

## 🛠️ Tech Stack

### Frontend
- **Framework:** [Next.js 14](https://nextjs.org/) (App Router)
- **Language:** TypeScript
- **Styling:** Tailwind CSS v3 (Glassmorphism & Custom Gradients)
- **Animations:** Framer Motion
- **Data Visualization:** Recharts
- **Components:** Monaco Editor (`@monaco-editor/react`), Excalidraw, Lucide React Icons

### Backend & AI
- **API Engine:** Next.js Serverless API Routes
- **Database:** MongoDB (via Mongoose ODM)
- **AI/LLM:** Google Gemini 1.5 Flash/Pro (`@google/generative-ai`)
- **Execution Engine:** Judge0 CE (via RapidAPI)

---

## 🏗️ Architecture Flow

1. **User Setup:** User selects Role (SDE, ML, Frontend), Difficulty, and Interviewer Style (Friendly vs. Strict FAANG). Optionally uploads a PDF Resume.
2. **Session Initialization:** Next.js API securely calls Gemini to generate a structured JSON question tailored to the user's parameters.
3. **Execution Phase:** 
   - *DSA:* User codes in Monaco Editor -> Code is sent to Judge0 -> stdout/stderr is returned.
   - *System Design:* User draws on Excalidraw -> Canvas exported to Base64 Image.
4. **AI Evaluation:** The candidate's response (code + execution output, voice transcript, or whiteboard image) is sent to Gemini.
5. **Persistence:** The evaluated metrics (Score, Grade, Strengths, Weaknesses, AST Profiling) are saved to MongoDB.
6. **Dashboard:** Recharts fetches aggregated data from MongoDB to visualize the user's readiness score.

---

## ⚙️ Local Setup & Installation

### 1. Prerequisites
Ensure you have the following installed:
- [Node.js](https://nodejs.org/) (v18 or higher)
- A MongoDB cluster URL (or local MongoDB server)

### 2. Clone the Repository
\`\`\`bash
git clone https://github.com/yourusername/ai-interview-simulator.git
cd ai-interview-simulator
\`\`\`

### 3. Environment Variables
Create a `.env.local` file in the root directory and add the following keys:

\`\`\`env
# Google Gemini API Key (Required for AI generation & evaluation)
# Get a key: https://aistudio.google.com/
GEMINI_API_KEY=your_gemini_api_key_here

# MongoDB Connection String (Required for saving Dashboard analytics)
MONGODB_URI=mongodb+srv://<username>:<password>@cluster.mongodb.net/interviewAI

# Judge0 Code Execution API (Required for the DSA mode execution)
# Get a free key: https://rapidapi.com/judge0-official/api/judge0-ce
JUDGE0_API_KEY=your_rapidapi_key_here
JUDGE0_API_HOST=judge0-ce.p.rapidapi.com
\`\`\`

### 4. Launch the Application

#### **For Windows Users (One-Click Launch):**
Simply double-click the **`Start_InterviewAI.bat`** file in the root folder.
This script will automatically install dependencies, start the dev server, and open your browser to `http://localhost:3000`.

#### **For Mac/Linux Users (Terminal):**
\`\`\`bash
# Install dependencies
npm install

# Start the development server
npm run dev
\`\`\`
Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

---

## 👨‍🎨 Design Philosophy
This project was built focusing on a premium **Glassmorphism** design aesthetic. It heavily utilizes CSS custom gradients, backdrops, and interactive micro-animations to ensure the UI feels modern, highly responsive, and engaging—mimicking top-tier modern SaaS products.

---

## 🤝 Contributing
Contributions are always welcome! If you have ideas for new interview modes, UI enhancements, or AI prompt tuning, feel free to open a Pull Request.

1. Fork the Project
2. Create your Feature Branch (\`git checkout -b feature/AmazingFeature\`)
3. Commit your Changes (\`git commit -m 'Add some AmazingFeature'\`)
4. Push to the Branch (\`git push origin feature/AmazingFeature\`)
5. Open a Pull Request

---

<div align="center">
  <i>Built to help engineers conquer the FAANG interview process.</i>
</div>
