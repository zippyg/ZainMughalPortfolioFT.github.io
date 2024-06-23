import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import './CV.css';

const CV = () => (
  <div>
    <Header />
    <main>
      <section id="cv">
        <h2>Curriculum Vitae</h2>
        <h3>My professional background</h3>
        <div className="cv-image-container">
          <img src="/portfolio resources/Zain Mughal NP CV - MSci.jpg" alt="Curriculum Vitae" className="cv-image" />
        </div>
      </section>
    </main>
    <Footer />
  </div>
);

export default CV;
