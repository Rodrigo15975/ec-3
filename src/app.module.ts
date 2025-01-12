import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
// import { Cacheable } from 'cacheable';
// import KeyvRedis from '@keyv/redis';
@Module({
  imports: [],
  controllers: [AppController],
  providers: [
    AppService,
    // {
    //   provide: 'CACHE_INSTANCE',
    //   useFactory: () => {
    //     const secondary = new KeyvRedis('redis://redis:6379');

    //     return new Cacheable({ secondary, ttl: '4h' });
    //   },
    // },
  ],
  // exports: ['CACHE_INSTANCE'],
})
export class AppModule {}
