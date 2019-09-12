.echo on
-- 今日（現在日付）
select date('now');
-- 今月末
select date('now','start of month','+1 month','-1 day');
-- エポック時刻（UTC）
SELECT datetime(1092941466, 'unixepoch');
-- エポック時刻（ローカル時刻）
SELECT datetime(1092941466, 'unixepoch', 'localtime');
-- 現在時刻を取得（エポック時刻）
SELECT strftime('%s','now');

-- 米国独立宣言に署名してからの日数
select julianday('now') - julianday('1776-07-04');
-- エポック時刻同士での時間差を求める
select strftime('%s','now') - strftime('%s','2004-01-01 02:34:56');
-- 今年の10月の最初の火曜日の日付
select date('now','start of year','+9 months','weekday 2');
-- UNIXエポックからの時間（秒単位）
select (julianday('now') - 2440587.5)*86400.0;

