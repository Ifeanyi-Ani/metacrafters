import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import Navigation from './components/Navigation';

function App() {
  return (
    <>
      <BrowserRouter>
        <div className="relative w-full">
          <Navigation />
          <main className="absolute w-[calc(100%-200px)] left-[200px] min-h-full bg-white transition-all">
            <Routes>
              <Route path="/" element={<Home />} />
              <Route path="/sign" element={<div>sign</div>} />
            </Routes>
          </main>
        </div>
      </BrowserRouter>
    </>
  );
}

export default App;
