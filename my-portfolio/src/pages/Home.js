import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import AnimatedSection from '../components/AnimatedSection';
import './Home.css';

const Home = () => (
  <div>
    <Header />
    <main>
      <AnimatedSection>
        <section id="about">
          <h2>About Me</h2>
          <div className="profile-container">
            <img src="/portfolio resources/curl headshot.jpeg" alt="Headshot" className="headshot" />
            <img src="/portfolio resources/Imperial_logo.png" alt="University Logo" className="university-logo" />
          </div>
          <h3>Imperial College London second year student</h3>
          <p>
            I am a second-year student at Imperial College London with a keen interest in data science, technology, and finance.
            I have a proven track record gained through numerous rigorous projects and active participation in the Imperial Finance Society.
            I possess advanced analytical and programming skills, including proficiency in Python and expertise in VBA, complemented by machine learning implementations.
            I am a versatile candidate eager to leverage quantitative skills and technological expertise to excel in consulting,
            enhancing client solutions and facilitating informed, strategic decision-making.
          </p>
        </section>
        <section id="education">
          <h2>Education</h2>
          <h3>My academic background</h3>
          <ul>
            <li><strong>Imperial College London</strong> (Oct 2022 - Jun 2026)
              <ul>
                <li>Physics MSci, Predicted First-Class Honors</li>
                <li>Focus on mathematical and statistical methods alongside Quantum mechanics, emphasizing analytical problem-solving</li>
                <li>Completed Imperial Horizons module in Accounting and Finance</li>
                <li>Active member of Imperial Investment and Finance Society</li>
              </ul>
            </li>
            <li><strong>Bishopshalt School - A Levels</strong> (Sep 2020 - Aug 2022)
              <ul>
                <li>Mathematics - A*</li>
                <li>Physics - A*</li>
                <li>Computer Science - A*</li>
              </ul>
            </li>
            <li><strong>Rosedale College - GCSE</strong> (Sep 2015 - Aug 2020)
              <ul>
                <li>Achieved 13 GCSEs with grades 9 to 8, including Maths and English, and 2 distinctions</li>
              </ul>
            </li>
          </ul>
        </section>
      </AnimatedSection>
    </main>
    <Footer />
  </div>
);

export default Home;
