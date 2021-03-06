
import io;
import launch;
import string;

foreach i in [0:9]
{ 
  program1 = "./heat_transfer_adios1";
  arguments1 = split("heat  4 3  40 50  6 500");
  printf("swift: launching: %s", program1);
  exit_code1 = @par=12 launch(program1, arguments1);
  printf("swift: received exit code1: %d", exit_code1);
  if (exit_code1 != 0)
  {
    printf("swift: The launched application did not succeed.");
  }

  program2 = "stage_write/stage_write";
  arguments2 = split("heat.bp staged.bp FLEXPATH \"\" MPI \"\"");
  printf("swift: launching: %s", program2);
  exit_code2 = @par=2 launch(program2, arguments2);
  printf("swift: received exit code2: %d", exit_code2);
  if (exit_code2 != 0)
  {
    printf("swift: The launched application did not succeed.");
  }
}
