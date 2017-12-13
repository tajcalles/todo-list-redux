import React from 'react';
import TodoForm from './components/TodoForm'; 
import TodoList from './components/TodoList';
import Footer from './components/Footer';

const App = () => (
  <div>
    <TodoForm />
    <TodoList />
    <Footer />
  </div>
)

export default App;
