/* Reset */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Roboto', 'Segoe UI', sans-serif;
  background: radial-gradient(circle at top left, #1a1a1a, #0d0d0d);
  color: #eaeaea;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  padding: 20px;
}

/* Main container */
.container {
  text-align: center;
  background: #1e1e1e;
  padding: 30px;
  border-radius: 18px;
  box-shadow: 0 12px 30px rgba(0,0,0,0.7);
  width: 100%;
  max-width: 420px;
  border: 1px solid rgba(255,255,255,0.08);
  transition: transform 0.3s ease;
}

.container:hover {
  transform: translateY(-4px);
}

/* Title */
h1 {
  margin-bottom: 20px;
  font-weight: 600;
  font-size: 1.6rem;
  color: #00c9ff;
  text-transform: uppercase;
  letter-spacing: 2px;
}

/* Stopwatch display */
.stopwatch {
  font-size: 3rem;
  margin-bottom: 25px;
  font-weight: bold;
  letter-spacing: 2px;
  color: #ffffff;
  text-shadow: 0 0 12px rgba(0,201,255,0.8);
}

/* Button layout */
.buttons {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 12px;
  margin-bottom: 20px;
}

/* Button base style */
.btn {
  flex: 1 1 45%;
  min-width: 120px;
  padding: 12px 0;
  border: none;
  border-radius: 10px;
  font-size: 1rem;
  cursor: pointer;
  transition: all 0.3s ease;
  font-weight: 500;
  color: #fff;
  letter-spacing: 1px;
}

.btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 6px 18px rgba(0,0,0,0.5);
}

/* Individual button colors with gradients */
.start { background: linear-gradient(135deg, #00c9ff, #92fe9d); }
.pause { background: linear-gradient(135deg, #ff6a00, #ee0979); }
.reset { background: linear-gradient(135deg, #8e2de2, #4a00e0); }
.lap   { background: linear-gradient(135deg, #11998e, #38ef7d); }

/* Lap list styling */
.lap-times {
  list-style: none;
  padding: 0;
  margin: 0;
  max-height: 160px;
  overflow-y: auto;
  text-align: left;
}

.lap-times li {
  background: rgba(255,255,255,0.05);
  padding: 10px;
  margin: 6px 0;
  border-radius: 6px;
  font-size: 0.95rem;
  border-left: 4px solid #00c9ff;
  transition: background 0.3s ease;
}

.lap-times li:hover {
  background: rgba(255,255,255,0.1);
}

/* Responsive adjustments */
@media (max-width: 600px) {
  .container {
    padding: 20px;
  }

  h1 {
    font-size: 1.4rem;
  }

  .stopwatch {
    font-size: 2.5rem;
  }

  .btn {
    flex: 1 1 100%;
    min-width: unset;
  }
}
