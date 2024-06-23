import React from 'react';
import { Document, Page, pdfjs } from 'react-pdf';
import Header from '../components/Header';
import Footer from '../components/Footer';
import './CV.css';

pdfjs.GlobalWorkerOptions.workerSrc = `//cdnjs.cloudflare.com/ajax/libs/pdf.js/${pdfjs.version}/pdf.worker.min.js`;

const CV = () => (
  <div>
    <Header />
    <main>
      <section id="cv">
        <h2>Curriculum Vitae</h2>
        <h3>My professional background</h3>
        <div className="pdf-container">
          <Document file="/portfolio resources/Zain Mughal NP CV - MSci .pdf">
            <Page pageNumber={1} />
          </Document>
        </div>
      </section>
    </main>
    <Footer />
  </div>
);

export default CV;
