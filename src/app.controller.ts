import { Controller, Get, HttpStatus, Inject } from '@nestjs/common';
import { Cacheable } from 'cacheable';
@Controller()
export class AppController {
  private tasks = [
    {
      id: 1,
      title: 'Task 1',
      description: 'Description of task 1',
    },
  ];

  constructor(@Inject('CACHE_INSTANCE') private readonly cache: Cacheable) {
    console.log(cache);
  }
  @Get()
  async getHello() {
    const tasksCache = await this.cache.get('tasks');
    if (tasksCache)
      return {
        tasks: tasksCache,
        message: 'Caching',
        statuCode: HttpStatus.OK,
      };
    await this.cache.set('tasks', this.tasks);

    return {
      message: 'No caching',
      tasks: this.tasks,
      statuCode: HttpStatus.OK,
    };
  }
}
