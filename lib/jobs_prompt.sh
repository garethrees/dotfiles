__jobs_ps1 ()
{
  echo "[$(__jobs_count)]"
}

__jobs_count ()
{
  echo "$(jobs -s | wc -l | tr -d ' ')"
}
