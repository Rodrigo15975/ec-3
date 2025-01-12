import { Controller, Get, HttpStatus } from '@nestjs/common';

@Controller()
export class AppController {
  @Get()
  getHello() {
    return {
      message: 'Hello World!, in NestJS with docker compose and EC-2-AWS',
      statuCode: HttpStatus.OK,
    };
  }
}
