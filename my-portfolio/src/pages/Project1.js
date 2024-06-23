import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import './Project1.css';

const Project1 = () => (
  <div>
    <Header />
    <main>
      <section id="project-detail">
        <h2>Project Title 1</h2>
        <h3>Subtitle or brief description</h3>
        <p>This is a detailed description of Project 1. Explain what the project is about, the technologies used, and any challenges faced.</p>
        <figure>
          <img src="/portfolio resources/Screenshot 2024-06-23 at 12.32.24.png" alt="Project 1 Image" />
          <figcaption><a href="#" target="_blank" rel="noopener noreferrer">View Project Files</a></figcaption>
        </figure>
        <h3>Technologies Used</h3>
        <p>List the technologies used in the project.</p>
        <h3>Challenges</h3>
        <p>Describe any challenges faced during the project and how they were overcome.</p>
      </section>
    </main>
    <Footer />
  </div>
);

export default Project1;
