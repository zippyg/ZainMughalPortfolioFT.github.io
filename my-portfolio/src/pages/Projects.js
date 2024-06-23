import React from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import ProjectCard from '../components/ProjectCard';
import './Projects.css';

const Projects = () => (
  <div>
    <Header />
    <main>
      <section id="projects">
        <h2>My Projects</h2>
        <ProjectCard title="Project 1" description="Description of Project 1" link="/project1" />
        <ProjectCard title="Project 2" description="Description of Project 2" link="/project2" />
        {/* Add more ProjectCards as needed */}
      </section>
    </main>
    <Footer />
  </div>
);

export default Projects;
