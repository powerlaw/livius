drop table if exists "video";
create table if not exists "video" (
   "id" integer not null primary key autoincrement,
   "video_id" varchar not null,
   "title" varchar not null default '',
   "description" varchar not null default '',
   "cover_image" varchar not null default '',
   "detail_html" text not null,
   "playUrl" varchar not null default '',
   "embedUrl" varchar not null default '',
   "downloadUrl" varchar not null default '',
   "type" varchar not null default 'default',
   "state" varchar not null default 'default',
   "like_count" integer not null default '0',
   "share_count" integer not null default '0',
   "comment_count" integer not null default '0',
   "favor_count" integer not null default '0',
   "fake_like_count" integer not null default '0',
   "fake_favor_count" integer not null default '0',
   "fake_share_count" integer not null default '0',
   "fake_comment_count" integer not null default '0',
   "created_at" datetime not null default current_timestamp,
   "updated_at" datetime not null
);
create unique index "tiny_video_video_id_unique" on "video" (
   "video_id"
);

drop table if exists "good";
create table if not exists "good" (
   "id" integer not null primary key autoincrement,
   "good_id" varchar not null,
   "name" varchar not null default '',
   "simple_name" varchar not null default '',
   "full_name" varchar not null default '',
   "pinyin" varchar not null default '',
   "letter" varchar not null default '',
   "fletter" varchar not null default '',
   "brand_id" varchar not null default '',
   "description" varchar not null default '',
   "detail_html" text not null,
   "cover_image" varchar not null default '',
   "preview_images" varchar not null default '',
   "detail_images" varchar not null default '',
   "post_images" varchar not null default '',
   "url" varchar not null default '',
   "posts_ids" varchar not null default '',
   "price" float not null default '0',
   "ori_price" float not null default '0',
   "discount" float not null default '0',
   "tags" varchar not null default '',
   "purchase_url" varchar not null default '',
   "rebate_url" varchar not null default '',
   "third_source" varchar not null default '',
   "third_id" varchar not null default '',
   "third_hash" varchar not null default '',
   "purchase_type" varchar not null default 'default',
   "type" varchar not null default 'default',
   "state" varchar not null default 'default',
   "like_count" integer not null default '0',
   "share_count" integer not null default '0',
   "comment_count" integer not null default '0',
   "favor_count" integer not null default '0',
   "fake_like_count" integer not null default '0',
   "fake_favor_count" integer not null default '0',
   "fake_share_count" integer not null default '0',
   "fake_comment_count" integer not null default '0',
   "created_at" datetime not null default current_timestamp,
   "updated_at" datetime not null
);
create unique index "tiny_good_good_id_unique" on "good" (
   "good_id"
);

drop table if exists "good_video";
create table if not exists "good_video" (
   "id" integer not null primary key autoincrement,
   "good_id" varchar not null,
   "video_id" varchar not null,
   "type" varchar not null default 'default',
   "state" varchar not null default 'default',
   "created_at" datetime not null default current_timestamp,
   "updated_at" datetime not null
);
create unique index "tiny_good_video_good_id_video_id_unique" on "good_video" (
   "good_id",
   "video_id"
);
