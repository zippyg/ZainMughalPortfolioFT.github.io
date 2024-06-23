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
          <h3>Imperial College London second year student</h3>
          <p>
            I am a second-year student at Imperial College London with a keen interest in data science, technology, and finance.
            I have a proven track record gained through numerous rigorous projects and active participation in the Imperial Finance Society.
            I possess advanced analytical and programming skills, including proficiency in Python and expertise in VBA, complemented by machine learning implementations.
            I am a versatile candidate eager to leverage quantitative skills and technological expertise to excel in consulting,
            enhancing client solutions and facilitating informed, strategic decision-making.
          </p>
        </section>
      </AnimatedSection>
    </main>
    <Footer />
  </div>
);

export default Home;
