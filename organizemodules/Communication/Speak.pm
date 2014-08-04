#because it's in the communication folder so we need to use ::
package Communication::Speak;

use Exporter qw(import);

#use @EXPORT_OK to export method
@EXPORT_OK = qw(test);
#@EXPORT = qw(test);

sub test {
    print "hello world\n";
}

#don't forget to put 1 on the last line otherwise it won't work
1
