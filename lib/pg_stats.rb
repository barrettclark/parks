module PGConnection
  def conn
    config = YAML.load_file(File.open('config/database.yml'))['development']
    @conn ||= PG.connect(
      :dbname   => config['database'],
      :user     => config['username'],
      :password => config['password'],
      :host     => config['host'] || 'localhost'
    )
  end
end

class PgStatStatements
  extend PGConnection
  def self.stats
    sql = <<-SQL
      SELECT
        (total_time / 1000 / 60) AS total_minutes,
        (total_time/calls) AS average_time_ms,
        query
      FROM pg_stat_statements
      ORDER BY 2 DESC
      LIMIT 100;
    SQL
    conn.exec(sql)
  end
end

if __FILE__==$0
  require 'pp'
  require 'bundler'
  Bundler.require

  PgStatStatements.stats.take(5).each do |row|
    %w(total_minutes average_time_ms).each do |column|
      row[column] = Float(row[column])
    end
    pp row
  end
end
