import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import { Worker, Viewer } from '@react-pdf-viewer/core';
import '@react-pdf-viewer/core/lib/styles/index.css';
import '@react-pdf-viewer/default-layout/lib/styles/index.css';
import './CV.css';

const CV = () => (
  <div>
    <Header />
    <main>
      <section id="cv">
        <h2>Curriculum Vitae</h2>
        <h3>My professional background</h3>
        <div className="pdf-container">
          <Worker workerUrl={`https://unpkg.com/pdfjs-dist@2.6.347/build/pdf.worker.min.js`}>
            <Viewer fileUrl="/portfolio resources/Zain Mughal NP CV - MSci .pdf" />
          </Worker>
        </div>
      </section>
    </main>
    <Footer />
  </div>
);

export default CV;
