import { Controller, Get, HttpStatus } from '@nestjs/common';
@Controller()
export class AppController {
  private tasks = [
    {
      id: 1,
      title: 'Task 1',
      description: 'Description of task 1',
    },
  ];

  @Get()
  async getHello() {
    return {
      message: 'Get all tasks',
      tasks: this.tasks,
      statuCode: HttpStatus.OK,
    };
  }
}
