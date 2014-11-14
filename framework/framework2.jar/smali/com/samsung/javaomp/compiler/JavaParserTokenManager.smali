.class public Lcom/samsung/javaomp/compiler/JavaParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/javaomp/compiler/JavaParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec10:[J

.field static final jjbitVec11:[J

.field static final jjbitVec12:[J

.field static final jjbitVec13:[J

.field static final jjbitVec14:[J

.field static final jjbitVec15:[J

.field static final jjbitVec16:[J

.field static final jjbitVec17:[J

.field static final jjbitVec18:[J

.field static final jjbitVec19:[J

.field static final jjbitVec2:[J

.field static final jjbitVec20:[J

.field static final jjbitVec21:[J

.field static final jjbitVec22:[J

.field static final jjbitVec23:[J

.field static final jjbitVec24:[J

.field static final jjbitVec25:[J

.field static final jjbitVec26:[J

.field static final jjbitVec27:[J

.field static final jjbitVec28:[J

.field static final jjbitVec29:[J

.field static final jjbitVec3:[J

.field static final jjbitVec30:[J

.field static final jjbitVec31:[J

.field static final jjbitVec32:[J

.field static final jjbitVec33:[J

.field static final jjbitVec34:[J

.field static final jjbitVec35:[J

.field static final jjbitVec36:[J

.field static final jjbitVec37:[J

.field static final jjbitVec38:[J

.field static final jjbitVec39:[J

.field static final jjbitVec4:[J

.field static final jjbitVec40:[J

.field static final jjbitVec41:[J

.field static final jjbitVec42:[J

.field static final jjbitVec43:[J

.field static final jjbitVec44:[J

.field static final jjbitVec45:[J

.field static final jjbitVec46:[J

.field static final jjbitVec47:[J

.field static final jjbitVec48:[J

.field static final jjbitVec49:[J

.field static final jjbitVec5:[J

.field static final jjbitVec50:[J

.field static final jjbitVec51:[J

.field static final jjbitVec52:[J

.field static final jjbitVec53:[J

.field static final jjbitVec54:[J

.field static final jjbitVec55:[J

.field static final jjbitVec56:[J

.field static final jjbitVec57:[J

.field static final jjbitVec58:[J

.field static final jjbitVec59:[J

.field static final jjbitVec6:[J

.field static final jjbitVec60:[J

.field static final jjbitVec61:[J

.field static final jjbitVec7:[J

.field static final jjbitVec8:[J

.field static final jjbitVec9:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private image:Ljava/lang/StringBuilder;

.field protected input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

.field private final jjimage:Ljava/lang/StringBuilder;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x4

    new-array v0, v3, [J

    fill-array-data v0, :array_644

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_658

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec2:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_66c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec3:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_680

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec4:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_694

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec5:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_6a8

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec6:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_6bc

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec7:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_6d0

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec8:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_6e4

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec9:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_6f8

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec10:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_70c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec11:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_720

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec12:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_734

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec13:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_748

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec14:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_75c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec15:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_770

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec16:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_784

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec17:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_798

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec18:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_7ac

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec19:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_7c0

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec20:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_7d4

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec21:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_7e8

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec22:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_7fc

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec23:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_810

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec24:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_824

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec25:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_838

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec26:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_84c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec27:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_860

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec28:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_874

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec29:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_888

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec30:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_89c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec31:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_8b0

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec32:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_8c4

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec33:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_8d8

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec34:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_8ec

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec35:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_900

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec36:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_914

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec37:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_928

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec38:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_93c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec39:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_950

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec40:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_964

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec41:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_978

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec42:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_98c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec43:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_9a0

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec44:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_9b4

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec45:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_9c8

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec46:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_9dc

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec47:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_9f0

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec48:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_a04

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec49:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_a18

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec50:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_a2c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec51:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_a40

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec52:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_a54

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec53:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_a68

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec54:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_a7c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec55:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_a90

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec56:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_aa4

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec57:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_ab8

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec58:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_acc

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec59:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_ae0

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec60:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_af4

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec61:[J

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_b08

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnextStates:[I

    const/16 v0, 0xbd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v6

    aput-object v4, v0, v7

    const/4 v1, 0x2

    const-string v2, "//"

    aput-object v2, v0, v1

    aput-object v4, v0, v5

    aput-object v4, v0, v3

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "parallel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sections"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "barrier"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "master"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cancel"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "critical"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "single"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "task"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "taskwait"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "taskyield"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "nowait"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "reduction"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "shared"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "schedule"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "firstprivate"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "lastprivate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "copyprivate"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "ordered"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "mergeable"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "num_threads"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "collapse"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "guided"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "runtime"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "&&"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "||"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "min"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "max"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    aput-object v4, v0, v1

    const/16 v1, 0x37

    aput-object v4, v0, v1

    const/16 v1, 0x38

    aput-object v4, v0, v1

    const/16 v1, 0x39

    aput-object v4, v0, v1

    const/16 v1, 0x3a

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    aput-object v4, v0, v1

    const/16 v1, 0x3c

    aput-object v4, v0, v1

    const/16 v1, 0x3d

    aput-object v4, v0, v1

    const/16 v1, 0x3e

    aput-object v4, v0, v1

    const/16 v1, 0x3f

    aput-object v4, v0, v1

    const/16 v1, 0x40

    aput-object v4, v0, v1

    const/16 v1, 0x41

    aput-object v4, v0, v1

    const/16 v1, 0x42

    aput-object v4, v0, v1

    const/16 v1, 0x43

    aput-object v4, v0, v1

    const/16 v1, 0x44

    aput-object v4, v0, v1

    const/16 v1, 0x45

    aput-object v4, v0, v1

    const/16 v1, 0x46

    aput-object v4, v0, v1

    const/16 v1, 0x47

    const-string v2, "abstract"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "assert"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "break"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "byte"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "case"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "catch"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "char"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "class"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "const"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "enum"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "extends"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "finally"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "implements"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "import"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "instanceof"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "interface"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "native"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "package"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "protected"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "strictfp"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "super"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "switch"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "synchronized"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "this"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "throw"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "throws"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "transient"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "true"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "try"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "void"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "volatile"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "while"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    aput-object v4, v0, v1

    const/16 v1, 0x7d

    aput-object v4, v0, v1

    const/16 v1, 0x7e

    aput-object v4, v0, v1

    const/16 v1, 0x7f

    aput-object v4, v0, v1

    const/16 v1, 0x80

    aput-object v4, v0, v1

    const/16 v1, 0x81

    aput-object v4, v0, v1

    const/16 v1, 0x82

    aput-object v4, v0, v1

    const/16 v1, 0x83

    aput-object v4, v0, v1

    const/16 v1, 0x84

    aput-object v4, v0, v1

    const/16 v1, 0x85

    aput-object v4, v0, v1

    const/16 v1, 0x86

    aput-object v4, v0, v1

    const/16 v1, 0x87

    aput-object v4, v0, v1

    const/16 v1, 0x88

    aput-object v4, v0, v1

    const/16 v1, 0x89

    aput-object v4, v0, v1

    const/16 v1, 0x8a

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "=="

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "<="

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, ">="

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "!="

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v2, "||"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "&&"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "++"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "--"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "<<"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "+="

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "-="

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "*="

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "/="

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "&="

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "|="

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "^="

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "%="

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "<<="

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, ">>="

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, ">>>="

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "..."

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, ">>>"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, ">>"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    aput-object v4, v0, v1

    const/16 v1, 0xbb

    const-string v2, "\u001a"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    aput-object v4, v0, v1

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v6

    const-string v1, "IN_OMP_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "IN_FORMAL_COMMENT"

    aput-object v2, v0, v1

    const-string v1, "IN_MULTI_LINE_COMMENT"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0xbd

    new-array v0, v0, [I

    fill-array-data v0, :array_b8c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    fill-array-data v0, :array_d0a

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    fill-array-data v0, :array_d1a

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    fill-array-data v0, :array_d2a

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    fill-array-data v0, :array_d3a

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoMore:[J

    return-void

    :array_644
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_658
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_66c
    .array-data 8
        -0xfffffffdffffeL
        -0x2001
        -0xff080000001L
        0x12000000007fffffL
    .end array-data

    :array_680
    .array-data 8
        0x0
        0x0
        0x420043c00000000L
        -0x80000000800001L
    .end array-data

    :array_694
    .array-data 8
        0xffffcffffffffL
        -0x10000
        -0x600c00000000001L
        0x401f00030003L
    .end array-data

    :array_6a8
    .array-data 8
        0x0
        0x400000000000000L
        -0x4000028c0L
        0xffffffcff7fffL
    .end array-data

    :array_6bc
    .array-data 8
        -0x1
        -0x1
        -0xffd
        0x33fffffffff199fL
    .end array-data

    :array_6d0
    .array-data 8
        -0x2000000000000L
        -0x1fd800001L
        0xff
        0x707ffffff0000L
    .end array-data

    :array_6e4
    .array-data 8
        0x7fffffe00000000L
        -0x1fffffffff801L
        -0x1
        0x1c000060002fffffL
    .end array-data

    :array_6f8
    .array-data 8
        0x1ffffffd0000L
        0x0
        0x3fffffffffL
        0x0
    .end array-data

    :array_70c
    .array-data 8
        0x23ffffffffffffe0L
        0x3ff010000L
        0x3c5fdfffff99fe0L
        0xf0003b0000000L
    .end array-data

    :array_720
    .array-data 8
        0x36dfdfffff987e0L
        0x1c00005e000000L
        0x23edfdfffffbafe0L
        0x100010000L
    .end array-data

    :array_734
    .array-data 8
        0x23cdfdfffff99fe0L
        0x3b0000000L
        0x3bfc718d63dc7e0L
        0x0
    .end array-data

    :array_748
    .array-data 8
        0x3effdfffffddfe0L
        0x300000000L
        0x3effdfffffddfe0L
        0x340000000L
    .end array-data

    :array_75c
    .array-data 8
        0x3fffdfffffddfe0L
        0x300000000L
        0x2ffbfffffc7fffe0L
        0x7f
    .end array-data

    :array_770
    .array-data 8
        -0x7ff2000000000002L
        0x7f
        0x200decaefef02596L
        0x3000005f
    .end array-data

    :array_784
    .array-data 8
        0x1
        0x7fffffffeffL
        0xf00
        0x0
    .end array-data

    :array_798
    .array-data 8
        0x6fbffffffffL
        0x3f0000
        -0x100000000L
        0x7fffffffff003fL
    .end array-data

    :array_7ac
    .array-data 8
        -0x1
        -0x7c000001
        -0xf800000001L
        0x3ffffffffffffffL
    .end array-data

    :array_7c0
    .array-data 8
        -0x81
        -0xc280c281L
        0x7f3d7fffffff3d7fL
        -0x8000008080c3L
    .end array-data

    :array_7d4
    .array-data 8
        -0x80c28001L
        0x7ffff7f
        -0x100000000L
        0x1fffffffffffffL
    .end array-data

    :array_7e8
    .array-data 8
        -0x1
        0x7f9fffffffffffL
        -0xf8000002L
        0x7ffffffffffL
    .end array-data

    :array_7fc
    .array-data 8
        0x0
        0x0
        0xfffffffffffffL
        0x8000000
    .end array-data

    :array_810
    .array-data 8
        -0x100000000L
        0xffffffffffffffL
        0x1ffffffffffL
        0x0
    .end array-data

    :array_824
    .array-data 8
        -0x1
        -0x1
        -0xf0000001L
        0x3ffffffffffffffL
    .end array-data

    :array_838
    .array-data 8
        -0xc0c00001L
        0x3fffffffaaff3f3fL
        0x5fdfffffffffffffL
        0x1fdc1fff0fcf1fdcL
    .end array-data

    :array_84c
    .array-data 8
        -0x8000000000000000L
        -0x7fffffffffffffffL
        0xffff00000000L
        0x0
    .end array-data

    :array_860
    .array-data 8
        0x3fbbd503e2ffc84L
        -0x100000000L
        0xf
        0x0
    .end array-data

    :array_874
    .array-data 8
        0x73e03fe000000e0L
        -0x2
        -0x19fe00001L
        0x7fffffffffffffffL
    .end array-data

    :array_888
    .array-data 8
        -0x1e00000000020L
        -0x1
        0xffffff00007fffL
        0x0
    .end array-data

    :array_89c
    .array-data 8
        -0x1
        -0x1
        0x3fffffffffffffL
        0x0
    .end array-data

    :array_8b0
    .array-data 8
        -0x1
        -0x1
        0x3fffffffffL
        0x0
    .end array-data

    :array_8c4
    .array-data 8
        -0x1
        -0x1
        0x1fff
        0x0
    .end array-data

    :array_8d8
    .array-data 8
        -0x1
        -0x1
        0xfffffffffL
        0x0
    .end array-data

    :array_8ec
    .array-data 8
        0x3fffffffffffL
        0x0
        0x0
        0x0
    .end array-data

    :array_900
    .array-data 8
        0x5f7ffdffa0f8007fL
        -0x25
        0x3ffffffffffffL
        -0x80000
    .end array-data

    :array_914
    .array-data 8
        0x3fffffffffffffffL
        -0x10000
        -0x30001
        0xfff0000000000ffL
    .end array-data

    :array_928
    .array-data 8
        0x18000000000000L
        -0x28fdffffff2000L
        -0x1
        0x1fffffffffffffffL
    .end array-data

    :array_93c
    .array-data 8
        -0x78000001fffffff0L
        -0x1ff8000002L
        0x7fffffffffffffffL
        0x631cfcfcfcL
    .end array-data

    :array_950
    .array-data 8
        0x0
        0x0
        0x420043cffffffffL
        -0x80000000800001L
    .end array-data

    :array_964
    .array-data 8
        -0x1
        0x400000700007fffL
        -0x4000028c0L
        0xffffffcff7fffL
    .end array-data

    :array_978
    .array-data 8
        -0x1
        -0x1
        -0xf85
        0x33fffffffff199fL
    .end array-data

    :array_98c
    .array-data 8
        -0x2000000000000L
        -0x1fd800001L
        -0x440000040001ff01L
        0x707ffffff0016L
    .end array-data

    :array_9a0
    .array-data 8
        0x7fffffe00000000L
        -0xfc00ffc00001L
        -0x1
        0x1fff3dff9fefffffL
    .end array-data

    :array_9b4
    .array-data 8
        -0xe00000008000L
        0x7ff
        0x1ffffffffffffL
        0x0
    .end array-data

    :array_9c8
    .array-data 8
        -0xc00000000000012L
        0xffcfff1f3fffL
        -0x2c3a020000066012L
        0xfffcfb080399fL
    .end array-data

    :array_9dc
    .array-data 8
        -0x2c9202000006781cL
        0x1fffc05e003987L
        -0xc12020000045012L
        0xffc100013bbfL
    .end array-data

    :array_9f0
    .array-data 8
        -0xc32020000066012L
        0xffc3b0c0398fL
        -0x3c4038e729c23814L
        0xff8000803dc7L
    .end array-data

    :array_a04
    .array-data 8
        -0x3c10020000022012L
        0xffc300603ddfL
        -0x3c10020000022014L
        0xffc340603ddfL
    .end array-data

    :array_a18
    .array-data 8
        -0x3c00020000022014L
        0xffc300803dcfL
        0x2ffbfffffc7fffecL
        0xc0000ff5f847fL
    .end array-data

    :array_a2c
    .array-data 8
        -0x7800000000000002L
        0x3ff7fff
        0x3bffecaefef02596L
        0x33ff3f5f
    .end array-data

    :array_a40
    .array-data 8
        -0x3d5ffc00fcffffffL
        -0x1f80000000101L
        0x1ffffffffeff0fdfL
        0x40
    .end array-data

    :array_a54
    .array-data 8
        0x3c7f6fbffffffffL
        0x3ff03ff
        -0x100000000L
        0x7fffffffff003fL
    .end array-data

    :array_a68
    .array-data 8
        -0x80c28001L
        0x3fe0007ffff7fL
        -0x100000000L
        0x1fffffffffffffL
    .end array-data

    :array_a7c
    .array-data 8
        0x0
        0x0
        -0x1
        0x3ff080fffffL
    .end array-data

    :array_a90
    .array-data 8
        -0xfc008800L
        0xffffffffffffffL
        0x3ffffffffffL
        0x0
    .end array-data

    :array_aa4
    .array-data 8
        -0x7fff83ffffff1000L
        -0x7fff03ffffffffffL
        0xffff00000000L
        0x21fff0000L
    .end array-data

    :array_ab8
    .array-data 8
        0x73efffe000000e0L
        -0x2
        -0x199e00001L
        0x7fffffffffffffffL
    .end array-data

    :array_acc
    .array-data 8
        0x5f7ffdffe0f8007fL
        -0x25
        0x3ffffffffffffL
        -0x80000
    .end array-data

    :array_ae0
    .array-data 8
        0x18000f00000000L
        -0x28fdffffff2000L
        -0x1
        -0x6000000000000001L
    .end array-data

    :array_af4
    .array-data 8
        -0x78000001fc00fff0L
        -0x1ff8000002L
        0x7fffffffffffffffL
        0xe0000631cfcfcfcL
    .end array-data

    :array_b08
    .array-data 4
        0x3c
        0x3d
        0x3f
        0x1e
        0x1f
        0x8
        0x22
        0x23
        0x26
        0x27
        0x2d
        0x3a
        0x3b
        0x13
        0x14
        0x16
        0xa
        0xc
        0x41
        0x43
        0x2
        0x44
        0x4b
        0x4
        0x5
        0x8
        0x13
        0x14
        0x18
        0x16
        0x1e
        0x1f
        0x8
        0x28
        0x29
        0x8
        0x32
        0x33
        0x35
        0x45
        0x46
        0x4c
        0x4d
        0x4e
        0x6
        0x7
        0xd
        0xe
        0x10
        0x15
        0x17
        0x19
        0x20
        0x21
        0x24
        0x25
        0x2a
        0x2b
        0x47
        0x48
        0x49
        0x4a
        0x4f
        0x50
    .end array-data

    :array_b8c
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x3
        -0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d0a
    .array-data 8
        0xa7fffffffffff8fL
        0x1fffffffffffff80L
        0x1ffffffffffffce1L
    .end array-data

    :array_d1a
    .array-data 8
        -0xbffffffffffff90L
        0x39
        0x0
    .end array-data

    :array_d2a
    .array-data 8
        -0xbffffffffffff90L
        0x39
        0x0
    .end array-data

    :array_d3a
    .array-data 8
        0x0
        0x46
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaCharStream;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x51

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    const/16 v0, 0xa2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaCharStream;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;-><init>(Lcom/samsung/javaomp/compiler/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private ReInitRounds()V
    .registers 4

    const v0, -0x7fffffff

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    const/16 v0, 0x51

    :goto_7
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_7

    :cond_13
    return-void
.end method

.method private jjAddStates(II)V
    .registers 6

    :goto_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_13

    return-void

    :cond_13
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .registers 13

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_1e

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    :cond_10
    :goto_10
    return v0

    :pswitch_11
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec2:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :cond_1c
    move v0, v1

    goto :goto_10

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method private static final jjCanMove_1(IIIJJ)Z
    .registers 13

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_1c6

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec3:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c2

    :cond_10
    :goto_10
    return v0

    :sswitch_11
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec4:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_1c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec5:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_27
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec6:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_32
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec7:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_3d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec8:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_48
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec9:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_53
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec10:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_5e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec11:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_69
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec12:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_74
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec13:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_7f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec14:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_8a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec15:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_96
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec16:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_a2
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec17:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_ae
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec18:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_ba
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec19:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_c6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec20:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_d2
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec21:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_de
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_ea
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec22:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_f6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec23:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_102
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec24:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_10e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec25:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_11a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec26:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_126
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec27:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_132
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec28:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_13e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec29:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_14a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec30:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_156
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec31:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_162
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec32:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_16e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec33:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_17a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec34:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_186
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec35:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_192
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec36:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_19e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec37:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_1aa
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec38:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_1b6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec39:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :cond_1c2
    move v0, v1

    goto/16 :goto_10

    nop

    :sswitch_data_1c6
    .sparse-switch
        0x0 -> :sswitch_11
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_27
        0x4 -> :sswitch_32
        0x5 -> :sswitch_3d
        0x6 -> :sswitch_48
        0x7 -> :sswitch_53
        0x9 -> :sswitch_5e
        0xa -> :sswitch_69
        0xb -> :sswitch_74
        0xc -> :sswitch_7f
        0xd -> :sswitch_8a
        0xe -> :sswitch_96
        0xf -> :sswitch_a2
        0x10 -> :sswitch_ae
        0x11 -> :sswitch_ba
        0x12 -> :sswitch_c6
        0x13 -> :sswitch_d2
        0x14 -> :sswitch_de
        0x16 -> :sswitch_ea
        0x17 -> :sswitch_f6
        0x18 -> :sswitch_102
        0x1e -> :sswitch_10e
        0x1f -> :sswitch_11a
        0x20 -> :sswitch_126
        0x21 -> :sswitch_132
        0x30 -> :sswitch_13e
        0x31 -> :sswitch_14a
        0x4d -> :sswitch_156
        0x9f -> :sswitch_162
        0xa4 -> :sswitch_16e
        0xd7 -> :sswitch_17a
        0xfa -> :sswitch_186
        0xfb -> :sswitch_192
        0xfd -> :sswitch_19e
        0xfe -> :sswitch_1aa
        0xff -> :sswitch_1b6
    .end sparse-switch
.end method

.method private static final jjCanMove_2(IIIJJ)Z
    .registers 13

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_1c6

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec3:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c2

    :cond_10
    :goto_10
    return v0

    :sswitch_11
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec40:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_1c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec5:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_27
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec41:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_32
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec42:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_3d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec43:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_48
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec44:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_53
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec45:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_5e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec46:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_69
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec47:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_74
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec48:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_7f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec49:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    :sswitch_8a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec50:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_96
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec51:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_a2
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec52:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_ae
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec53:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_ba
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec19:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_c6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec20:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_d2
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec54:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_de
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_ea
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec22:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_f6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec55:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_102
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec56:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_10e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec25:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_11a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec26:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_126
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec57:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_132
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec28:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_13e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec58:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_14a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec30:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_156
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec31:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_162
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec32:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_16e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec33:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_17a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec34:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_186
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec35:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_192
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec59:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_19e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec37:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_1aa
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec60:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :sswitch_1b6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec61:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_10

    :cond_1c2
    move v0, v1

    goto/16 :goto_10

    nop

    :sswitch_data_1c6
    .sparse-switch
        0x0 -> :sswitch_11
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_27
        0x4 -> :sswitch_32
        0x5 -> :sswitch_3d
        0x6 -> :sswitch_48
        0x7 -> :sswitch_53
        0x9 -> :sswitch_5e
        0xa -> :sswitch_69
        0xb -> :sswitch_74
        0xc -> :sswitch_7f
        0xd -> :sswitch_8a
        0xe -> :sswitch_96
        0xf -> :sswitch_a2
        0x10 -> :sswitch_ae
        0x11 -> :sswitch_ba
        0x12 -> :sswitch_c6
        0x13 -> :sswitch_d2
        0x14 -> :sswitch_de
        0x16 -> :sswitch_ea
        0x17 -> :sswitch_f6
        0x18 -> :sswitch_102
        0x1e -> :sswitch_10e
        0x1f -> :sswitch_11a
        0x20 -> :sswitch_126
        0x21 -> :sswitch_132
        0x30 -> :sswitch_13e
        0x31 -> :sswitch_14a
        0x4d -> :sswitch_156
        0x9f -> :sswitch_162
        0xa4 -> :sswitch_16e
        0xd7 -> :sswitch_17a
        0xfa -> :sswitch_186
        0xfb -> :sswitch_192
        0xfd -> :sswitch_19e
        0xfe -> :sswitch_1aa
        0xff -> :sswitch_1b6
    .end sparse-switch
.end method

.method private jjCheckNAdd(I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_18
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .registers 4

    :goto_0
    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private jjCheckNAddTwoStates(II)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .registers 16

    const/4 v2, 0x0

    const/16 v0, 0x51

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v7, v0

    move v8, v1

    move v9, v2

    :goto_11
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1f

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInitRounds()V

    :cond_1f
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v1, 0x40

    if-ge v0, v1, :cond_5a6

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shl-long v1, v0, v2

    :cond_2b
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_89e

    :cond_34
    :goto_34
    :pswitch_34
    if-ne v8, v9, :cond_2b

    move v0, v7

    :goto_37
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_43

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_43
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    iput v9, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v9, 0x51

    if-ne v1, v2, :cond_88b

    :goto_4d
    return p2

    :pswitch_4e
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_6d

    const/16 v0, 0x43

    if-le v7, v0, :cond_5a

    const/16 v7, 0x43

    :cond_5a
    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    :cond_5f
    :goto_5f
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_34

    const/16 v0, 0x2e

    const/16 v3, 0x2f

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_34

    :cond_6d
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_5f

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x38

    aput v4, v0, v3

    goto :goto_5f

    :pswitch_80
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_a6

    const/4 v0, 0x3

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    move v0, v7

    :goto_90
    const-wide/high16 v3, 0x3fe000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f2

    const/16 v3, 0x7c

    if-le v0, v3, :cond_9f

    const/16 v0, 0x7c

    :cond_9f
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    move v7, v0

    goto :goto_34

    :cond_a6
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_b5

    const/16 v0, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    move v0, v7

    goto :goto_90

    :cond_b5
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v0, v3, :cond_c8

    const/16 v0, 0x87

    if-le v7, v0, :cond_c1

    const/16 v7, 0x87

    :cond_c1
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    move v0, v7

    goto :goto_90

    :cond_c8
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v0, v3, :cond_d7

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    move v0, v7

    goto :goto_90

    :cond_d7
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v0, v3, :cond_e6

    const/16 v0, 0x10

    const/16 v3, 0x11

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    move v0, v7

    goto :goto_90

    :cond_e6
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_f0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    :cond_f0
    move v0, v7

    goto :goto_90

    :cond_f2
    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x30

    if-ne v3, v4, :cond_89b

    const/16 v3, 0x7c

    if-le v0, v3, :cond_fe

    const/16 v0, 0x7c

    :cond_fe
    const/16 v3, 0x12

    const/16 v4, 0x16

    invoke-direct {p0, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    move v7, v0

    goto/16 :goto_34

    :pswitch_108
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x7c

    if-le v7, v0, :cond_117

    const/16 v7, 0x7c

    :cond_117
    const/4 v0, 0x1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_11e
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_34

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_12a
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x80

    if-le v7, v0, :cond_139

    const/16 v7, 0x80

    :cond_139
    const/16 v0, 0x17

    const/16 v3, 0x19

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_142
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_154
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x80

    if-le v7, v0, :cond_163

    const/16 v7, 0x80

    :cond_163
    const/4 v0, 0x7

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_16b
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v0, v3, :cond_34

    const/16 v0, 0x10

    const/16 v3, 0x11

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_34

    :pswitch_17a
    const-wide v3, -0x8000002401L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_18d
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v0, v3, :cond_34

    const/16 v0, 0x85

    if-le v7, v0, :cond_34

    const/16 v7, 0x85

    goto/16 :goto_34

    :pswitch_19b
    const-wide v3, 0x8400000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_1ae
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xf

    const/16 v3, 0xb

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_1c0
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_1d0
    const-wide/high16 v3, 0xf000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x11

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_1e7
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_1f7
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v0, v3, :cond_34

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_206
    const-wide v3, -0x400002401L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_21b
    const-wide v3, 0x8400000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_230
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v0, v3, :cond_34

    const/16 v0, 0x86

    if-le v7, v0, :cond_34

    const/16 v7, 0x86

    goto/16 :goto_34

    :pswitch_23e
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x1a

    const/16 v3, 0x1d

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_250
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_262
    const-wide/high16 v3, 0xf000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x1a

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_279
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_289
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v0, v3, :cond_34

    const/16 v0, 0x87

    if-le v7, v0, :cond_295

    const/16 v7, 0x87

    :cond_295
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_29c
    const-wide v3, 0x3ff00100fffc1ffL

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x87

    if-le v7, v0, :cond_2ae

    const/16 v7, 0x87

    :cond_2ae
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_2b5
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/4 v0, 0x3

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_2c6
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x1e

    const/16 v3, 0x20

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_2d8
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_2eb
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x21

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_2fd
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x22

    const/16 v3, 0x23

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_30f
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_322
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x80

    if-le v7, v0, :cond_331

    const/16 v7, 0x80

    :cond_331
    const/16 v0, 0x25

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_33a
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x26

    const/16 v3, 0x27

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_34c
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_34

    const/16 v0, 0x80

    if-le v7, v0, :cond_358

    const/16 v7, 0x80

    :cond_358
    const/16 v0, 0x21

    const/16 v3, 0x23

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_361
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x80

    if-le v7, v0, :cond_370

    const/16 v7, 0x80

    :cond_370
    const/16 v0, 0x21

    const/16 v3, 0x23

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_379
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_38c
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x80

    if-le v7, v0, :cond_39b

    const/16 v7, 0x80

    :cond_39b
    const/16 v0, 0x2b

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_3a4
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_34

    const/16 v0, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_34

    :pswitch_3b3
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x20

    if-ne v0, v3, :cond_34

    const/16 v0, 0x2e

    const/16 v3, 0x2f

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_3c2
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x23

    if-ne v0, v3, :cond_34

    const/16 v0, 0x30

    const/16 v3, 0x37

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_3d1
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x20

    if-ne v0, v3, :cond_34

    const/16 v0, 0x30

    const/16 v3, 0x37

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_3e0
    const-wide/16 v3, -0x2401

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    if-le v7, v0, :cond_3ed

    const/4 v7, 0x1

    :cond_3ed
    const/16 v0, 0x24

    const/16 v3, 0x26

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_34

    :pswitch_3f6
    const-wide/16 v3, 0x2400

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    if-le v7, v0, :cond_34

    const/4 v7, 0x1

    goto/16 :goto_34

    :pswitch_405
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v0, v3, :cond_34

    const/4 v0, 0x1

    if-le v7, v0, :cond_34

    const/4 v7, 0x1

    goto/16 :goto_34

    :pswitch_411
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x34

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_425
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x39

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_439
    const-wide v3, -0x800000000001L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x41

    if-le v7, v0, :cond_34

    const/16 v7, 0x41

    goto/16 :goto_34

    :pswitch_44d
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x38

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_461
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_34

    const/16 v0, 0x43

    if-le v7, v0, :cond_46d

    const/16 v7, 0x43

    :cond_46d
    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_474
    const-wide/16 v3, -0x2401

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x43

    if-le v7, v0, :cond_483

    const/16 v7, 0x43

    :cond_483
    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_48a
    const-wide/16 v3, 0x2400

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x43

    if-le v7, v0, :cond_34

    const/16 v7, 0x43

    goto/16 :goto_34

    :pswitch_49b
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v0, v3, :cond_34

    const/16 v0, 0x43

    if-le v7, v0, :cond_34

    const/16 v7, 0x43

    goto/16 :goto_34

    :pswitch_4a9
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x3e

    aput v4, v0, v3

    goto/16 :goto_34

    :pswitch_4bd
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x30

    if-ne v0, v3, :cond_34

    const/16 v0, 0x7c

    if-le v7, v0, :cond_4c9

    const/16 v7, 0x7c

    :cond_4c9
    const/16 v0, 0x12

    const/16 v3, 0x16

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_4d2
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x7c

    if-le v7, v0, :cond_4e1

    const/16 v7, 0x7c

    :cond_4e1
    const/16 v0, 0x42

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_4e9
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x7c

    if-le v7, v0, :cond_4f8

    const/16 v7, 0x7c

    :cond_4f8
    const/16 v0, 0x43

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_500
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x27

    const/16 v3, 0x28

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_34

    :pswitch_512
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_34

    const/16 v0, 0x47

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_51f
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x47

    const/16 v3, 0x48

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_531
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_544
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x80

    if-le v7, v0, :cond_553

    const/16 v7, 0x80

    :cond_553
    const/16 v0, 0x4a

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :pswitch_55c
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x29

    const/16 v3, 0x2b

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_34

    :pswitch_56e
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_34

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_57b
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_34

    :pswitch_58e
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    const/16 v0, 0x80

    if-le v7, v0, :cond_59d

    const/16 v7, 0x80

    :cond_59d
    const/16 v0, 0x50

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_34

    :cond_5a6
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v1, 0x80

    if-ge v0, v1, :cond_7ee

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v2, v2, 0x3f

    shl-long/2addr v0, v2

    :cond_5b3
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v8

    sparse-switch v2, :sswitch_data_944

    :cond_5bc
    :goto_5bc
    if-ne v8, v9, :cond_5b3

    move v0, v7

    goto/16 :goto_37

    :sswitch_5c1
    const-wide v2, 0x7fffffe87fffffeL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x87

    if-le v7, v2, :cond_5d3

    const/16 v7, 0x87

    :cond_5d3
    const/16 v2, 0x1c

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5bc

    :sswitch_5d9
    const-wide v2, 0x100000001000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x7c

    if-le v7, v2, :cond_5bc

    const/16 v7, 0x7c

    goto :goto_5bc

    :sswitch_5ec
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x2c

    const/16 v3, 0x2d

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_5bc

    :sswitch_600
    const-wide v2, 0x5000000050L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x80

    if-le v7, v2, :cond_5bc

    const/16 v7, 0x80

    goto :goto_5bc

    :sswitch_613
    const-wide/32 v2, -0x10000001

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5bc

    :sswitch_623
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_5bc

    const/16 v2, 0x2e

    const/16 v3, 0x30

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_5bc

    :sswitch_631
    const-wide v2, 0x14404410000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5bc

    :sswitch_644
    const-wide/32 v2, -0x10000001

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_657
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_5bc

    const/16 v2, 0x31

    const/16 v3, 0x33

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_666
    const-wide v2, 0x14404410000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_67b
    const-wide v2, -0x7800000178000002L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x87

    if-le v7, v2, :cond_68d

    const/16 v7, 0x87

    :cond_68d
    const/16 v2, 0x1c

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5bc

    :sswitch_694
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x34

    const/16 v3, 0x35

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_6a9
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x36

    const/16 v3, 0x37

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_6be
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x38

    const/16 v3, 0x39

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_6d3
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x70

    if-ne v2, v3, :cond_5bc

    const/4 v2, 0x1

    if-le v7, v2, :cond_6dd

    const/4 v7, 0x1

    :cond_6dd
    const/16 v2, 0x24

    const/16 v3, 0x26

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_6e6
    const/4 v2, 0x1

    if-le v7, v2, :cond_6ea

    const/4 v7, 0x1

    :cond_6ea
    const/16 v2, 0x24

    const/16 v3, 0x26

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_6f3
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_5bc

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x31

    aput v4, v2, v3

    goto/16 :goto_5bc

    :sswitch_707
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_5bc

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x36

    aput v4, v2, v3

    goto/16 :goto_5bc

    :sswitch_71b
    const/16 v2, 0x41

    if-le v7, v2, :cond_5bc

    const/16 v7, 0x41

    goto/16 :goto_5bc

    :sswitch_723
    const/16 v2, 0x43

    if-le v7, v2, :cond_729

    const/16 v7, 0x43

    :cond_729
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_730
    const-wide v2, 0x100000001000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5bc

    :sswitch_743
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x7c

    if-le v7, v2, :cond_755

    const/16 v7, 0x7c

    :cond_755
    const/16 v2, 0x42

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5bc

    :sswitch_75d
    const-wide v2, 0x100000001000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x45

    const/16 v3, 0x46

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5bc

    :sswitch_772
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x45

    const/16 v3, 0x46

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5bc

    :sswitch_787
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x3a

    const/16 v3, 0x3b

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_79c
    const-wide v2, 0x1000000010000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x3c

    const/16 v3, 0x3d

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_7b1
    const-wide v2, 0x100000001000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x4c

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5bc

    :sswitch_7c4
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x29

    const/16 v3, 0x2b

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5bc

    :sswitch_7d9
    const-wide v2, 0x1000000010000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5bc

    const/16 v2, 0x3e

    const/16 v3, 0x3f

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5bc

    :cond_7ee
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shr-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0x6

    const-wide/16 v2, 0x1

    and-int/lit8 v4, v0, 0x3f

    shl-long v3, v2, v4

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    const-wide/16 v5, 0x1

    iget-char v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v5, v10

    :cond_807
    iget-object v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v10, v10, v8

    sparse-switch v10, :sswitch_data_9ba

    :cond_810
    :goto_810
    if-ne v8, v9, :cond_807

    move v0, v7

    goto/16 :goto_37

    :sswitch_815
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_810

    const/16 v10, 0x87

    if-le v7, v10, :cond_821

    const/16 v7, 0x87

    :cond_821
    const/16 v10, 0x1c

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_810

    :sswitch_827
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_810

    iget-object v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v11, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0xb

    aput v12, v10, v11

    goto :goto_810

    :sswitch_83a
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_810

    const/16 v10, 0xd

    const/16 v11, 0xf

    invoke-direct {p0, v10, v11}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_810

    :sswitch_848
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_810

    const/16 v10, 0x87

    if-le v7, v10, :cond_854

    const/16 v7, 0x87

    :cond_854
    const/16 v10, 0x1c

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_810

    :sswitch_85a
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_810

    const/4 v10, 0x1

    if-le v7, v10, :cond_864

    const/4 v7, 0x1

    :cond_864
    const/16 v10, 0x24

    const/16 v11, 0x26

    invoke-direct {p0, v10, v11}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_810

    :sswitch_86c
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_810

    const/16 v10, 0x41

    if-le v7, v10, :cond_810

    const/16 v7, 0x41

    goto :goto_810

    :sswitch_879
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_810

    const/16 v10, 0x43

    if-le v7, v10, :cond_885

    const/16 v7, 0x43

    :cond_885
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-direct {p0, v10, v11}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_810

    :cond_88b
    :try_start_88b
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_893
    .catch Ljava/io/IOException; {:try_start_88b .. :try_end_893} :catch_898

    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_11

    :catch_898
    move-exception v0

    goto/16 :goto_4d

    :cond_89b
    move v7, v0

    goto/16 :goto_34

    :pswitch_data_89e
    .packed-switch 0x0
        :pswitch_80
        :pswitch_108
        :pswitch_34
        :pswitch_11e
        :pswitch_12a
        :pswitch_34
        :pswitch_142
        :pswitch_154
        :pswitch_34
        :pswitch_16b
        :pswitch_17a
        :pswitch_18d
        :pswitch_34
        :pswitch_19b
        :pswitch_1ae
        :pswitch_1c0
        :pswitch_1d0
        :pswitch_1e7
        :pswitch_1f7
        :pswitch_206
        :pswitch_34
        :pswitch_21b
        :pswitch_230
        :pswitch_23e
        :pswitch_250
        :pswitch_262
        :pswitch_279
        :pswitch_289
        :pswitch_29c
        :pswitch_2b5
        :pswitch_2c6
        :pswitch_34
        :pswitch_2d8
        :pswitch_2eb
        :pswitch_2fd
        :pswitch_34
        :pswitch_30f
        :pswitch_322
        :pswitch_33a
        :pswitch_34c
        :pswitch_361
        :pswitch_34
        :pswitch_379
        :pswitch_38c
        :pswitch_3a4
        :pswitch_4e
        :pswitch_3b3
        :pswitch_3c2
        :pswitch_3d1
        :pswitch_34
        :pswitch_3e0
        :pswitch_3f6
        :pswitch_405
        :pswitch_411
        :pswitch_34
        :pswitch_34
        :pswitch_425
        :pswitch_439
        :pswitch_44d
        :pswitch_461
        :pswitch_474
        :pswitch_48a
        :pswitch_49b
        :pswitch_4a9
        :pswitch_4bd
        :pswitch_34
        :pswitch_4d2
        :pswitch_4e9
        :pswitch_34
        :pswitch_500
        :pswitch_512
        :pswitch_51f
        :pswitch_34
        :pswitch_531
        :pswitch_544
        :pswitch_34
        :pswitch_55c
        :pswitch_56e
        :pswitch_34
        :pswitch_57b
        :pswitch_58e
    .end packed-switch

    :sswitch_data_944
    .sparse-switch
        0x0 -> :sswitch_5c1
        0x2 -> :sswitch_5d9
        0x5 -> :sswitch_5ec
        0x8 -> :sswitch_600
        0xa -> :sswitch_613
        0xc -> :sswitch_623
        0xd -> :sswitch_631
        0x13 -> :sswitch_644
        0x14 -> :sswitch_657
        0x15 -> :sswitch_666
        0x1c -> :sswitch_67b
        0x1f -> :sswitch_694
        0x23 -> :sswitch_6a9
        0x29 -> :sswitch_6be
        0x31 -> :sswitch_6d3
        0x32 -> :sswitch_6e6
        0x36 -> :sswitch_6f3
        0x37 -> :sswitch_707
        0x39 -> :sswitch_71b
        0x3c -> :sswitch_723
        0x41 -> :sswitch_730
        0x42 -> :sswitch_743
        0x44 -> :sswitch_75d
        0x45 -> :sswitch_772
        0x47 -> :sswitch_787
        0x48 -> :sswitch_79c
        0x4b -> :sswitch_7b1
        0x4c -> :sswitch_7c4
        0x4e -> :sswitch_7d9
    .end sparse-switch

    :sswitch_data_9ba
    .sparse-switch
        0x0 -> :sswitch_815
        0xa -> :sswitch_827
        0x13 -> :sswitch_83a
        0x1c -> :sswitch_848
        0x32 -> :sswitch_85a
        0x39 -> :sswitch_86c
        0x3c -> :sswitch_879
    .end sparse-switch
.end method

.method private jjMoveNfa_1(II)I
    .registers 14

    const/4 v2, 0x0

    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v7, v0

    move v8, v1

    move v9, v2

    :goto_11
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1f

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInitRounds()V

    :cond_1f
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v1, 0x40

    if-ge v0, v1, :cond_123

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shl-long/2addr v0, v2

    :cond_2a
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_1f4

    :cond_33
    :goto_33
    :pswitch_33
    if-ne v8, v9, :cond_2a

    move v0, v7

    :goto_36
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_42

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_42
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    iput v9, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v9, 0xc

    if-ne v1, v2, :cond_1e4

    :goto_4c
    return p2

    :pswitch_4d
    const-wide/high16 v2, 0x3fe000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_62

    const/16 v2, 0x39

    if-le v7, v2, :cond_5c

    const/16 v7, 0x39

    :cond_5c
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_33

    :cond_62
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0xa

    aput v4, v2, v3

    goto :goto_33

    :cond_75
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v2, v3, :cond_82

    const/16 v2, 0x3a

    if-le v7, v2, :cond_33

    const/16 v7, 0x3a

    goto :goto_33

    :cond_82
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v2, v3, :cond_93

    const/16 v2, 0x36

    if-le v7, v2, :cond_8e

    const/16 v7, 0x36

    :cond_8e
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_33

    :cond_93
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x23

    if-ne v2, v3, :cond_33

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_33

    :pswitch_9f
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x20

    if-ne v2, v3, :cond_33

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_33

    :pswitch_ab
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v2, v3, :cond_33

    const/16 v2, 0x36

    if-le v7, v2, :cond_b7

    const/16 v7, 0x36

    :cond_b7
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_33

    :pswitch_bd
    const-wide v2, 0x3ff00100fffc1ffL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    const/16 v2, 0x36

    if-le v7, v2, :cond_cf

    const/16 v7, 0x36

    :cond_cf
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_33

    :pswitch_d5
    const-wide/high16 v2, 0x3fe000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    const/16 v2, 0x39

    if-le v7, v2, :cond_e4

    const/16 v7, 0x39

    :cond_e4
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_33

    :pswitch_eb
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    const/16 v2, 0x39

    if-le v7, v2, :cond_fa

    const/16 v7, 0x39

    :cond_fa
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_33

    :pswitch_101
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v2, v3, :cond_33

    const/16 v2, 0x3a

    if-le v7, v2, :cond_33

    const/16 v7, 0x3a

    goto/16 :goto_33

    :pswitch_10f
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0xa

    aput v4, v2, v3

    goto/16 :goto_33

    :cond_123
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v1, 0x80

    if-ge v0, v1, :cond_19b

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v2, v2, 0x3f

    shl-long/2addr v0, v2

    :cond_130
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_210

    :cond_139
    :goto_139
    :pswitch_139
    if-ne v8, v9, :cond_130

    move v0, v7

    goto/16 :goto_36

    :pswitch_13e
    const-wide v2, 0x7fffffe87fffffeL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_139

    const/16 v2, 0x36

    if-le v7, v2, :cond_150

    const/16 v7, 0x36

    :cond_150
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_139

    :pswitch_155
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x70

    if-ne v2, v3, :cond_139

    const/4 v2, 0x3

    if-le v7, v2, :cond_139

    const/4 v7, 0x3

    goto :goto_139

    :pswitch_160
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_139

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x2

    aput v4, v2, v3

    goto :goto_139

    :pswitch_172
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_139

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x3

    aput v4, v2, v3

    goto :goto_139

    :pswitch_184
    const-wide v2, -0x7800000178000002L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_139

    const/16 v2, 0x36

    if-le v7, v2, :cond_196

    const/16 v7, 0x36

    :cond_196
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_139

    :cond_19b
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shr-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0x6

    const-wide/16 v2, 0x1

    and-int/lit8 v4, v0, 0x3f

    shl-long v3, v2, v4

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    const-wide/16 v5, 0x1

    iget-char v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v5, v10

    :cond_1b4
    iget-object v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v10, v10, v8

    sparse-switch v10, :sswitch_data_222

    :cond_1bd
    :goto_1bd
    if-ne v8, v9, :cond_1b4

    move v0, v7

    goto/16 :goto_36

    :sswitch_1c2
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1bd

    const/16 v10, 0x36

    if-le v7, v10, :cond_1ce

    const/16 v7, 0x36

    :cond_1ce
    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1bd

    :sswitch_1d3
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_1bd

    const/16 v10, 0x36

    if-le v7, v10, :cond_1df

    const/16 v7, 0x36

    :cond_1df
    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1bd

    :cond_1e4
    :try_start_1e4
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1ec} :catch_1f1

    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_11

    :catch_1f1
    move-exception v0

    goto/16 :goto_4c

    :pswitch_data_1f4
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_9f
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_ab
        :pswitch_bd
        :pswitch_d5
        :pswitch_eb
        :pswitch_101
        :pswitch_101
        :pswitch_10f
    .end packed-switch

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_13e
        :pswitch_139
        :pswitch_155
        :pswitch_160
        :pswitch_172
        :pswitch_139
        :pswitch_184
    .end packed-switch

    :sswitch_data_222
    .sparse-switch
        0x0 -> :sswitch_1c2
        0x6 -> :sswitch_1d3
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .registers 7

    const-wide/32 v4, 0x20000000

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_1dc

    invoke-direct {p0, v1, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_f
    return v0

    :sswitch_10
    const/16 v0, 0x3d

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :sswitch_17
    const/16 v0, 0x3e

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :sswitch_1e
    const/16 v0, 0x40

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :sswitch_25
    const/16 v0, 0x3f

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :sswitch_2c
    const/16 v0, 0xba

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :sswitch_33
    const/16 v0, 0x3c

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :sswitch_3a
    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_43
    const/16 v0, 0xa9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_4e
    const/16 v0, 0xa6

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x800080000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_5c
    const/16 v0, 0x8a

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :sswitch_63
    const/16 v0, 0x8b

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :sswitch_6a
    const/16 v0, 0xa4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x200000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_78
    const/16 v0, 0xa2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x80100000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_86
    const/16 v0, 0x91

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :sswitch_8d
    const/16 v0, 0xa3

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x100200000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_9c
    const/16 v0, 0x92

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_a8
    const/16 v0, 0xa5

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v0, 0x4

    const-wide v2, 0x400000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_b9
    const/16 v0, 0x99

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_c1
    const/16 v0, 0x90

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_c9
    const/16 v0, 0x95

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x8040008000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_d8
    const/16 v0, 0x94

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_e5
    const/16 v0, 0xb9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x1b0000010000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_f4
    const/16 v0, 0x98

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_fc
    const/16 v0, 0x93

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_104
    const/16 v0, 0x8e

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_10c
    const/16 v0, 0x8f

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_114
    const/16 v0, 0xa8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_120
    const-wide/16 v0, 0x180

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_128
    const-wide/16 v0, 0xe00

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_130
    const-wide/32 v0, 0x3f000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_139
    const-wide/32 v0, 0x1c0000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_142
    const-wide/32 v0, 0xe00000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_14b
    const-wide/32 v0, 0x1f000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_154
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_15a
    const-wide v0, 0xfc0000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_165
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_170
    const-wide v0, 0xe000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_17b
    const-wide v0, 0xf0000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_186
    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_191
    const-wide v0, 0x7e00000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_19c
    const-wide/high16 v0, 0x1f8000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_1a4
    const-wide/high16 v0, 0x600000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_1ac
    const-wide/high16 v0, 0x800000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_1b4
    const/16 v0, 0x8c

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_1bc
    const/16 v0, 0xa7

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x1000040000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_f

    :sswitch_1cb
    const/16 v0, 0x8d

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_1d3
    const/16 v0, 0x97

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    nop

    :sswitch_data_1dc
    .sparse-switch
        0x9 -> :sswitch_10
        0xa -> :sswitch_17
        0xc -> :sswitch_1e
        0xd -> :sswitch_25
        0x1a -> :sswitch_2c
        0x20 -> :sswitch_33
        0x21 -> :sswitch_3a
        0x25 -> :sswitch_43
        0x26 -> :sswitch_4e
        0x28 -> :sswitch_5c
        0x29 -> :sswitch_63
        0x2a -> :sswitch_6a
        0x2b -> :sswitch_78
        0x2c -> :sswitch_86
        0x2d -> :sswitch_8d
        0x2e -> :sswitch_9c
        0x2f -> :sswitch_a8
        0x3a -> :sswitch_b9
        0x3b -> :sswitch_c1
        0x3c -> :sswitch_c9
        0x3d -> :sswitch_d8
        0x3e -> :sswitch_e5
        0x3f -> :sswitch_f4
        0x40 -> :sswitch_fc
        0x5b -> :sswitch_104
        0x5d -> :sswitch_10c
        0x5e -> :sswitch_114
        0x61 -> :sswitch_120
        0x62 -> :sswitch_128
        0x63 -> :sswitch_130
        0x64 -> :sswitch_139
        0x65 -> :sswitch_142
        0x66 -> :sswitch_14b
        0x67 -> :sswitch_154
        0x69 -> :sswitch_15a
        0x6c -> :sswitch_165
        0x6e -> :sswitch_170
        0x70 -> :sswitch_17b
        0x72 -> :sswitch_186
        0x73 -> :sswitch_191
        0x74 -> :sswitch_19c
        0x76 -> :sswitch_1a4
        0x77 -> :sswitch_1ac
        0x7b -> :sswitch_1b4
        0x7c -> :sswitch_1bc
        0x7d -> :sswitch_1cb
        0x7e -> :sswitch_1d3
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_10c

    invoke-direct {p0, v1, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_a
    return v0

    :sswitch_b
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_11
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_17
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_1d
    const/16 v0, 0x31

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_a

    :sswitch_2b
    const/16 v0, 0x28

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_32
    const/16 v0, 0x29

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_39
    const/16 v0, 0x2e

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_40
    const/16 v0, 0x2c

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_47
    const/16 v0, 0x2a

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_4e
    const/16 v0, 0x2d

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_55
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_a

    :sswitch_5c
    const/16 v0, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_63
    const/16 v0, 0x33

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_6a
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_a

    :sswitch_74
    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_a

    :sswitch_7b
    const-wide v0, 0x204006000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_a

    :sswitch_85
    const-wide v0, 0x808000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_90
    const-wide/32 v0, 0x21001000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_99
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_a4
    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_af
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_b8
    const-wide v0, 0x30000040000800L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_c3
    const-wide v0, 0x8100080000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_ce
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_d7
    const-wide/32 v0, 0x100080

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_e0
    const-wide v0, 0x4000200000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_eb
    const-wide v0, 0x400c08300L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_f6
    const-wide/32 v0, 0x70000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_ff
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_a

    nop

    :sswitch_data_10c
    .sparse-switch
        0x9 -> :sswitch_b
        0xc -> :sswitch_11
        0x20 -> :sswitch_17
        0x26 -> :sswitch_1d
        0x28 -> :sswitch_2b
        0x29 -> :sswitch_32
        0x2a -> :sswitch_39
        0x2b -> :sswitch_40
        0x2c -> :sswitch_47
        0x2d -> :sswitch_4e
        0x2f -> :sswitch_55
        0x3a -> :sswitch_5c
        0x5e -> :sswitch_63
        0x61 -> :sswitch_6a
        0x62 -> :sswitch_74
        0x63 -> :sswitch_7b
        0x64 -> :sswitch_85
        0x66 -> :sswitch_90
        0x67 -> :sswitch_99
        0x69 -> :sswitch_a4
        0x6c -> :sswitch_af
        0x6d -> :sswitch_b8
        0x6e -> :sswitch_c3
        0x6f -> :sswitch_ce
        0x70 -> :sswitch_d7
        0x72 -> :sswitch_e0
        0x73 -> :sswitch_eb
        0x74 -> :sswitch_f6
        0x7c -> :sswitch_ff
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .registers 3

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_e

    const/4 v0, 0x1

    :goto_6
    return v0

    :pswitch_7
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_2(J)I

    move-result v0

    goto :goto_6

    :pswitch_data_e
    .packed-switch 0x2a
        :pswitch_7
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .registers 3

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_e

    const/4 v0, 0x1

    :goto_6
    return v0

    :pswitch_7
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_3(J)I

    move-result v0

    goto :goto_6

    :pswitch_data_e
    .packed-switch 0x2a
        :pswitch_7
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa10_0(JJ)I
    .registers 13

    const/16 v1, 0x9

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_14

    const/16 v1, 0x8

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_28

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_38

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_13

    :catch_28
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0xa

    goto :goto_13

    :pswitch_31
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa11_0(JJ)I

    move-result v0

    goto :goto_13

    :pswitch_data_38
    .packed-switch 0x65
        :pswitch_31
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa10_1(JJ)I
    .registers 14

    const/16 v8, 0x9

    const/4 v7, 0x6

    const-wide/16 v5, 0x0

    const/16 v0, 0xa

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_14

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    :try_start_14
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_26

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v3, :sswitch_data_62

    :cond_21
    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_13

    :catch_26
    move-exception v3

    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_13

    :sswitch_2b
    const-wide/32 v3, 0x2000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3a

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_13

    :cond_3a
    const-wide/32 v3, 0x4000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_21

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_13

    :sswitch_49
    const-wide v3, 0x100000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_21

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_13

    :sswitch_5a
    const-wide/32 v3, 0x1000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa11_1(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_data_62
    .sparse-switch
        0x65 -> :sswitch_2b
        0x73 -> :sswitch_49
        0x74 -> :sswitch_5a
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa11_0(JJ)I
    .registers 14

    const/16 v8, 0xb

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_16

    const/16 v1, 0x9

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_15
    return v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_2a

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_42

    :cond_23
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_15

    :catch_2a
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_15

    :pswitch_32
    const-wide/high16 v6, 0x4000000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_23

    const/16 v0, 0x72

    const/16 v1, 0x1c

    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_15

    :pswitch_data_42
    .packed-switch 0x64
        :pswitch_32
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa11_1(JJ)I
    .registers 13

    const-wide/16 v6, 0x0

    const/16 v0, 0xb

    const/16 v5, 0xa

    and-long v1, p3, p1

    cmp-long v3, v1, v6

    if-nez v3, :cond_13

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_25

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_3a

    :cond_20
    invoke-direct {p0, v5, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_12

    :catch_25
    move-exception v3

    invoke-direct {p0, v5, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_12

    :pswitch_2a
    const-wide/32 v3, 0x1000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_20

    const/16 v1, 0x18

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_12

    :pswitch_data_3a
    .packed-switch 0x65
        :pswitch_2a
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_0(JJ)I
    .registers 14

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_18

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_2d2

    :cond_d
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_17
    return v0

    :catch_18
    move-exception v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v0, 0x1

    goto :goto_17

    :sswitch_24
    const-wide v0, 0x80000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x9f

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_17

    :sswitch_38
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x42

    const/16 v2, 0x38

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_17

    :sswitch_4b
    const-wide v0, 0x100000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0xa0

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_17

    :sswitch_5f
    const-wide v0, 0x200000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0xa1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_17

    :sswitch_73
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x40000000000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto :goto_17

    :sswitch_7f
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_92

    const/16 v0, 0xaa

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_92
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x8000000000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_9f
    const-wide/32 v0, 0x4000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b2

    const/4 v0, 0x1

    const/16 v1, 0x9a

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_b2
    const-wide/32 v0, 0x8000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c5

    const/4 v0, 0x1

    const/16 v1, 0x9b

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_c5
    const-wide/32 v0, 0x10000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d8

    const/4 v0, 0x1

    const/16 v1, 0x9c

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_d8
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_eb

    const/4 v0, 0x1

    const/16 v1, 0x9d

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_eb
    const-wide v0, 0x80000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_100

    const/4 v0, 0x1

    const/16 v1, 0xab

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_100
    const-wide v0, 0x100000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_115

    const/4 v0, 0x1

    const/16 v1, 0xac

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_115
    const-wide v0, 0x200000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12a

    const/4 v0, 0x1

    const/16 v1, 0xad

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_12a
    const-wide v0, 0x400000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13f

    const/4 v0, 0x1

    const/16 v1, 0xae

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_13f
    const-wide v0, 0x800000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_154

    const/4 v0, 0x1

    const/16 v1, 0xaf

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_154
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_166

    const/4 v0, 0x1

    const/16 v1, 0xb0

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_166
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_178

    const/4 v0, 0x1

    const/16 v1, 0xb1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :cond_178
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    :sswitch_18a
    const-wide/high16 v0, 0x100000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19a

    const/16 v0, 0xb8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_19a
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0xb0000000000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_1a7
    const-wide v3, 0x12001003000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_1b7
    const-wide/16 v3, 0x80

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_1c4
    const-wide v3, 0x104000040000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_1d4
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x5e

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_17

    :sswitch_1e9
    const-wide v3, 0x838200000004000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_1f9
    const-wide/32 v3, 0x6000000

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_207
    const-wide/32 v3, 0x8208000

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_215
    const-wide v3, 0x180000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_225
    const-wide v3, 0xe00400000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_235
    const-wide/32 v0, 0x80000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_246

    const/16 v0, 0x53

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_246
    const-wide v3, 0x600001030130200L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_256
    const-wide v3, 0x1c0060000000400L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_266
    const-wide/16 v3, 0x100

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_273
    const-wide v3, 0xc00000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_283
    const-wide v3, 0x1088000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_293
    const-wide/high16 v3, 0x2000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_2a0
    const-wide/32 v3, 0x800000

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_2ae
    const-wide v3, 0x4000000000800L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_17

    :sswitch_2be
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/16 v1, 0x9e

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_17

    nop

    :sswitch_data_2d2
    .sparse-switch
        0x26 -> :sswitch_24
        0x2a -> :sswitch_38
        0x2b -> :sswitch_4b
        0x2d -> :sswitch_5f
        0x2e -> :sswitch_73
        0x3c -> :sswitch_7f
        0x3d -> :sswitch_9f
        0x3e -> :sswitch_18a
        0x61 -> :sswitch_1a7
        0x62 -> :sswitch_1b7
        0x65 -> :sswitch_1c4
        0x66 -> :sswitch_1d4
        0x68 -> :sswitch_1e9
        0x69 -> :sswitch_1f9
        0x6c -> :sswitch_207
        0x6d -> :sswitch_215
        0x6e -> :sswitch_225
        0x6f -> :sswitch_235
        0x72 -> :sswitch_256
        0x73 -> :sswitch_266
        0x74 -> :sswitch_273
        0x75 -> :sswitch_283
        0x77 -> :sswitch_293
        0x78 -> :sswitch_2a0
        0x79 -> :sswitch_2ae
        0x7c -> :sswitch_2be
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa1_1(J)I
    .registers 9

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    :try_start_4
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_16

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_b8

    :cond_11
    invoke-direct {p0, v5, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_15
    return v0

    :catch_16
    move-exception v1

    invoke-direct {p0, v5, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_15

    :sswitch_1b
    const-wide v1, 0x800000000000L

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_15

    :sswitch_2c
    const-wide/16 v1, 0x4

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_15

    :sswitch_39
    const-wide v0, 0x20000002072c80L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_43
    const-wide/32 v0, 0x800000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_4b
    const-wide/32 v0, 0x48200300

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_53
    const-wide v1, 0x80000000L

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x1f

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_15

    :sswitch_65
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_6d
    const-wide v0, 0x10000021008000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_77
    const-wide v0, 0x8204081000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_81
    const-wide/32 v0, 0x10104000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_89
    const-wide v0, 0x400000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_93
    const-wide v0, 0x7100000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto/16 :goto_15

    :sswitch_9e
    const-wide v0, 0x800000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto/16 :goto_15

    :sswitch_a9
    const-wide/high16 v1, 0x1000000000000L

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x30

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_15

    :sswitch_data_b8
    .sparse-switch
        0x26 -> :sswitch_1b
        0x2f -> :sswitch_2c
        0x61 -> :sswitch_39
        0x63 -> :sswitch_43
        0x65 -> :sswitch_4b
        0x66 -> :sswitch_53
        0x68 -> :sswitch_65
        0x69 -> :sswitch_6d
        0x6f -> :sswitch_77
        0x72 -> :sswitch_81
        0x74 -> :sswitch_89
        0x75 -> :sswitch_93
        0x79 -> :sswitch_9e
        0x7c -> :sswitch_a9
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa1_2(J)I
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_10

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_24

    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v0

    move v0, v1

    goto :goto_f

    :pswitch_13
    const-wide/16 v2, 0x10

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    const/16 v0, 0x44

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    nop

    :pswitch_data_24
    .packed-switch 0x2f
        :pswitch_13
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_3(J)I
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_10

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_24

    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v0

    move v0, v1

    goto :goto_f

    :pswitch_13
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    const/16 v0, 0x45

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    nop

    :pswitch_data_24
    .packed-switch 0x2f
        :pswitch_13
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa2_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_19
    return v1

    :cond_1a
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_37

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_1e4

    :cond_2d
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_19

    :catch_37
    move-exception v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x2

    goto :goto_19

    :sswitch_42
    const-wide/high16 v1, 0x40000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    const/4 v1, 0x2

    const/16 v2, 0xb6

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_19

    :sswitch_55
    const-wide/high16 v1, 0x8000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_68

    const/4 v1, 0x2

    const/16 v2, 0xb3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_19

    :cond_68
    const-wide/high16 v1, 0x10000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    const/4 v1, 0x2

    const/16 v2, 0xb4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_19

    :sswitch_7b
    const-wide/high16 v1, 0x80000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8f

    const/16 v1, 0xb7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_8f
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x20000000000000L

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_9d
    const-wide v12, 0x4040000000c000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_ae
    const-wide v12, 0x80000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_bf
    const-wide v12, 0x10000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_d0
    const-wide/16 v12, 0x400

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_de
    const-wide/32 v12, 0x40000

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_ed
    const-wide v12, 0xa0a020000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_fe
    const-wide v12, 0x400008001000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_10f
    const-wide v12, 0x4001006030000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_120
    const-wide v12, 0x240008000200L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_131
    const-wide v12, 0x1000180000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_142
    const-wide/32 v1, 0x10000000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_159

    const/4 v1, 0x2

    const/16 v2, 0x5c

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :cond_159
    const-wide v12, 0x30800000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_16a
    const-wide v12, 0x200201180L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_17b
    const-wide v1, 0x400000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_192

    const/16 v1, 0x62

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_192
    const-wide v12, 0x102820802800L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_1a3
    const-wide v12, 0x80000000500000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_1b4
    const-wide v1, 0x4000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    const/4 v1, 0x2

    const/16 v2, 0x66

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :sswitch_1cd
    const-wide/high16 v1, 0x100000000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    const/4 v1, 0x2

    const/16 v2, 0x78

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    nop

    :sswitch_data_1e4
    .sparse-switch
        0x2e -> :sswitch_42
        0x3d -> :sswitch_55
        0x3e -> :sswitch_7b
        0x61 -> :sswitch_9d
        0x62 -> :sswitch_ae
        0x63 -> :sswitch_bf
        0x65 -> :sswitch_d0
        0x66 -> :sswitch_de
        0x69 -> :sswitch_ed
        0x6c -> :sswitch_fe
        0x6e -> :sswitch_10f
        0x6f -> :sswitch_120
        0x70 -> :sswitch_131
        0x72 -> :sswitch_142
        0x73 -> :sswitch_16a
        0x74 -> :sswitch_17b
        0x75 -> :sswitch_1a3
        0x77 -> :sswitch_1b4
        0x79 -> :sswitch_1cd
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa2_1(JJ)I
    .registers 14

    const/4 v8, 0x1

    const/4 v7, 0x6

    const-wide/16 v5, 0x0

    const/4 v0, 0x2

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_11

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_23

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_d4

    :cond_1e
    :pswitch_1e
    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_10

    :catch_23
    move-exception v3

    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_10

    :pswitch_28
    const-wide v3, 0x400400000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_32
    const-wide/16 v3, 0x300

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_39
    const-wide/32 v3, 0x10200000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_41
    const-wide/32 v3, 0x8000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_49
    const-wide/32 v3, 0x800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_51
    const-wide v3, 0x1000104000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_5b
    const-wide v3, 0x200000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_65
    const-wide v3, 0x100000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_6f
    const-wide/high16 v3, 0x10000000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7d

    const/16 v1, 0x34

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_10

    :cond_7d
    const-wide v3, 0xc82000a000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_87
    const-wide/32 v3, 0x4000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_8f
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9e

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_10

    :cond_9e
    const-wide/32 v3, 0x41000480

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_a7
    const-wide/32 v3, 0x2070800

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_b0
    const-wide v3, 0x2000000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_bb
    const-wide/32 v3, 0x80000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_c4
    const-wide/high16 v3, 0x20000000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    const/16 v1, 0x35

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_10

    nop

    :pswitch_data_d4
    .packed-switch 0x61
        :pswitch_28
        :pswitch_1e
        :pswitch_32
        :pswitch_39
        :pswitch_1e
        :pswitch_41
        :pswitch_1e
        :pswitch_49
        :pswitch_51
        :pswitch_1e
        :pswitch_1e
        :pswitch_5b
        :pswitch_65
        :pswitch_6f
        :pswitch_1e
        :pswitch_87
        :pswitch_1e
        :pswitch_8f
        :pswitch_a7
        :pswitch_b0
        :pswitch_1e
        :pswitch_1e
        :pswitch_bb
        :pswitch_c4
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa3_0(JJJJ)I
    .registers 27

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_19
    return v1

    :cond_1a
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_37

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_234

    :cond_2d
    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_19

    :catch_37
    move-exception v1

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x3

    goto :goto_19

    :sswitch_42
    const-wide/high16 v1, 0x20000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    const/4 v1, 0x3

    const/16 v2, 0xb5

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_19

    :sswitch_55
    const-wide v12, 0x40000000e040400L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto :goto_19

    :sswitch_65
    const-wide/32 v12, 0x100000

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto :goto_19

    :sswitch_73
    const-wide v12, 0x4000000002000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto :goto_19

    :sswitch_83
    const-wide/high16 v1, 0x200000000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    const/4 v1, 0x3

    const/16 v2, 0x79

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_19

    :sswitch_98
    const-wide/16 v1, 0x800

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_ae

    const/4 v1, 0x3

    const/16 v2, 0x4b

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :cond_ae
    const-wide/16 v1, 0x1000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c4

    const/4 v1, 0x3

    const/16 v2, 0x4c

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :cond_c4
    const-wide/32 v1, 0x200000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_db

    const/4 v1, 0x3

    const/16 v2, 0x55

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :cond_db
    const-wide/high16 v1, 0x80000000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f1

    const/4 v1, 0x3

    const/16 v2, 0x77

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :cond_f1
    const-wide v12, 0x1000800800100L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_102
    const-wide v1, 0x1000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    const/4 v1, 0x3

    const/16 v2, 0x64

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :sswitch_11b
    const-wide v12, 0x802000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_12c
    const-wide v12, 0x10000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_13d
    const-wide v1, 0x8000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_156

    const/4 v1, 0x3

    const/16 v2, 0x67

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :cond_156
    const-wide v12, 0x800080080000200L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_167
    const-wide/32 v1, 0x400000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2d

    const/4 v1, 0x3

    const/16 v2, 0x56

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :sswitch_17e
    const-wide/high16 v12, 0x40000000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_18c
    const-wide/32 v1, 0x20000000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1a3

    const/4 v1, 0x3

    const/16 v2, 0x5d

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :cond_1a3
    const-wide v12, 0x30000100000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_1b4
    const-wide/16 v1, 0x4000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1ca

    const/4 v1, 0x3

    const/16 v2, 0x4e

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :cond_1ca
    const-wide v12, 0x200000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_1db
    const-wide/high16 v1, 0x8000000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1f1

    const/4 v1, 0x3

    const/16 v2, 0x73

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_19

    :cond_1f1
    const-wide/32 v12, 0x1018000

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_200
    const-wide v12, 0x2440200020080L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_211
    const-wide v12, 0x100000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    :sswitch_222
    const-wide v12, 0x20000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_19

    nop

    :sswitch_data_234
    .sparse-switch
        0x3d -> :sswitch_42
        0x61 -> :sswitch_55
        0x62 -> :sswitch_65
        0x63 -> :sswitch_73
        0x64 -> :sswitch_83
        0x65 -> :sswitch_98
        0x67 -> :sswitch_102
        0x69 -> :sswitch_11b
        0x6b -> :sswitch_12c
        0x6c -> :sswitch_13d
        0x6d -> :sswitch_167
        0x6e -> :sswitch_17e
        0x6f -> :sswitch_18c
        0x72 -> :sswitch_1b4
        0x73 -> :sswitch_1db
        0x74 -> :sswitch_200
        0x75 -> :sswitch_211
        0x76 -> :sswitch_222
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa3_1(JJ)I
    .registers 14

    const/4 v8, 0x6

    const/4 v7, 0x2

    const-wide/16 v5, 0x0

    const/4 v0, 0x3

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_11

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_23

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_d8

    :cond_1e
    :pswitch_1e
    invoke-direct {p0, v7, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_10

    :catch_23
    move-exception v3

    invoke-direct {p0, v7, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_10

    :pswitch_28
    const-wide v3, 0x100000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_32
    const-wide v3, 0x828080080L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_3c
    const-wide/16 v3, 0x2000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_43
    const-wide v3, 0x1000000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_4d
    const-wide v3, 0x8000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5e

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1, v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_10

    :cond_5e
    const-wide/32 v3, 0x10800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_66
    const-wide/32 v3, 0x40008000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_6e
    const-wide/32 v3, 0x10000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7c

    const/16 v3, 0x10

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_7c
    const-wide/32 v3, 0x60000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_84
    const-wide v3, 0x200000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_8e
    const-wide v3, 0x2000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    const/16 v1, 0x25

    invoke-direct {p0, v0, v1, v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_10

    :pswitch_a0
    const-wide/32 v3, 0x400400

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_a9
    const-wide/32 v3, 0x1000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_b2
    const-wide v3, 0x4402004b00L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_bd
    const-wide/32 v3, 0x200000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_c6
    const-wide/32 v3, 0x100000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_cf
    const-wide/32 v3, 0x4000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_data_d8
    .packed-switch 0x5f
        :pswitch_28
        :pswitch_1e
        :pswitch_32
        :pswitch_1e
        :pswitch_3c
        :pswitch_43
        :pswitch_4d
        :pswitch_1e
        :pswitch_66
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_6e
        :pswitch_84
        :pswitch_1e
        :pswitch_1e
        :pswitch_8e
        :pswitch_1e
        :pswitch_1e
        :pswitch_a0
        :pswitch_a9
        :pswitch_b2
        :pswitch_bd
        :pswitch_c6
        :pswitch_1e
        :pswitch_1e
        :pswitch_cf
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa4_0(JJJJ)I
    .registers 17

    and-long v4, p3, p1

    and-long v0, p7, p5

    or-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_15
    return v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_2e

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_18e

    :cond_23
    :pswitch_23
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_15

    :catch_2e
    move-exception v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v0, 0x4

    goto :goto_15

    :pswitch_3a
    const-wide v0, 0x30200000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto :goto_15

    :pswitch_44
    const-wide v0, 0x2800000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto :goto_15

    :pswitch_4e
    const-wide/32 v0, 0x1000000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_62

    const/4 v0, 0x4

    const/16 v1, 0x58

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_15

    :cond_62
    const-wide/high16 v0, 0x800000000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_75

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_15

    :cond_75
    const-wide v0, 0x40080000200L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto :goto_15

    :pswitch_7f
    const-wide/16 v0, 0x2000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_92

    const/4 v0, 0x4

    const/16 v1, 0x4d

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_15

    :cond_92
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    :pswitch_9a
    const-wide v0, 0x480000020000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    :pswitch_a5
    const-wide/16 v0, 0x400

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    const/4 v0, 0x4

    const/16 v1, 0x4a

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_15

    :pswitch_b9
    const-wide/32 v0, 0x2000000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ca

    const/16 v0, 0x59

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_ca
    const-wide/32 v0, 0x4100000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    :pswitch_d3
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    :pswitch_dc
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f0

    const/4 v0, 0x4

    const/16 v1, 0x70

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_15

    :cond_f0
    const-wide v0, 0x100900000180L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    :pswitch_fb
    const-wide/32 v0, 0x8000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_110

    const/4 v0, 0x4

    const/16 v1, 0x4f

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_15

    :cond_110
    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    :pswitch_118
    const-wide/32 v0, 0x10000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12d

    const/4 v0, 0x4

    const/16 v1, 0x50

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_15

    :cond_12d
    const-wide/32 v0, 0x8000000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_142

    const/4 v0, 0x4

    const/16 v1, 0x5b

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_15

    :cond_142
    const-wide v0, 0x200000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_159

    const/4 v0, 0x4

    const/16 v1, 0x6d

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_15

    :cond_159
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    :pswitch_161
    const-wide/32 v0, 0x40000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    :pswitch_16a
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    :pswitch_175
    const-wide/high16 v0, 0x10000000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_185

    const/16 v0, 0x74

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_185
    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_15

    nop

    :pswitch_data_18e
    .packed-switch 0x61
        :pswitch_3a
        :pswitch_23
        :pswitch_44
        :pswitch_23
        :pswitch_4e
        :pswitch_23
        :pswitch_23
        :pswitch_7f
        :pswitch_9a
        :pswitch_23
        :pswitch_a5
        :pswitch_b9
        :pswitch_23
        :pswitch_d3
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_dc
        :pswitch_fb
        :pswitch_118
        :pswitch_161
        :pswitch_16a
        :pswitch_175
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa4_1(JJ)I
    .registers 12

    const-wide/16 v5, 0x0

    const/4 v0, 0x4

    const/4 v4, 0x3

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_10

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_22

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_ae

    :pswitch_1d
    invoke-direct {p0, v4, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_f

    :catch_22
    move-exception v3

    invoke-direct {p0, v4, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_f

    :pswitch_27
    const-wide v3, 0x200100000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_31
    const-wide/32 v3, 0x200000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_39
    const-wide/32 v3, 0x800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_41
    const-wide v3, 0x1040402800L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_4b
    const-wide v3, 0x4400084700L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_55
    const-wide/32 v3, 0x20000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_65

    const/16 v1, 0x1d

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_f

    :cond_65
    const-wide/32 v3, 0x8080

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_6d
    const-wide v3, 0x800000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_77
    const-wide/32 v3, 0x6000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_7f
    const-wide/32 v3, 0x10000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_87
    const-wide v3, 0x101000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto/16 :goto_f

    :pswitch_92
    const-wide/32 v3, 0x8000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto/16 :goto_f

    :pswitch_9b
    const-wide/32 v3, 0x20000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto/16 :goto_f

    :pswitch_a4
    const-wide/32 v3, 0x40000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto/16 :goto_f

    nop

    :pswitch_data_ae
    .packed-switch 0x61
        :pswitch_27
        :pswitch_1d
        :pswitch_31
        :pswitch_39
        :pswitch_41
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_4b
        :pswitch_1d
        :pswitch_1d
        :pswitch_55
        :pswitch_6d
        :pswitch_1d
        :pswitch_1d
        :pswitch_77
        :pswitch_1d
        :pswitch_7f
        :pswitch_1d
        :pswitch_87
        :pswitch_92
        :pswitch_1d
        :pswitch_9b
        :pswitch_1d
        :pswitch_a4
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa5_0(JJ)I
    .registers 15

    const/4 v1, 0x4

    const/16 v9, 0x1c

    const/4 v8, 0x5

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_15

    const/4 v1, 0x3

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_29

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_12e

    :cond_22
    :pswitch_22
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_14

    :catch_29
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_14

    :pswitch_31
    const-wide/16 v0, 0x280

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto :goto_14

    :pswitch_38
    const-wide v0, 0x80000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_49

    const/16 v0, 0x6b

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :cond_49
    const-wide v0, 0x400000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5a

    const/16 v0, 0x6e

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :cond_5a
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto :goto_14

    :pswitch_64
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto :goto_14

    :pswitch_6c
    const-wide/32 v6, 0x100000

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_7b

    const/16 v0, 0x54

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :cond_7b
    const-wide v6, 0x2000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_22

    const/16 v0, 0x65

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :pswitch_8c
    const-wide v0, 0x800000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_97
    const-wide v0, 0x10000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_a2
    const-wide/high16 v6, 0x2000000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_22

    const/16 v0, 0x71

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_14

    :pswitch_b1
    const-wide/high16 v0, 0x440000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_b9
    const-wide/32 v0, 0x4040000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_c2
    const-wide v0, 0x80000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_cd
    const-wide v0, 0x100000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_df

    const/16 v0, 0x6c

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_14

    :cond_df
    const-wide v0, 0x200020000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_ea
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_f2
    const-wide/high16 v6, 0x20000000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_22

    const/16 v0, 0x75

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_14

    :pswitch_101
    const-wide/16 v0, 0x100

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_110

    const/16 v0, 0x48

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_14

    :cond_110
    const-wide v0, 0x100000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_122

    const/16 v0, 0x60

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_14

    :cond_122
    const-wide v0, 0x820000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_14

    nop

    :pswitch_data_12e
    .packed-switch 0x61
        :pswitch_31
        :pswitch_22
        :pswitch_38
        :pswitch_64
        :pswitch_6c
        :pswitch_8c
        :pswitch_97
        :pswitch_a2
        :pswitch_b1
        :pswitch_22
        :pswitch_22
        :pswitch_b9
        :pswitch_c2
        :pswitch_cd
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_ea
        :pswitch_f2
        :pswitch_101
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa5_1(JJ)I
    .registers 14

    const/4 v8, 0x4

    const/4 v7, 0x6

    const-wide/16 v5, 0x0

    const/4 v0, 0x5

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_11

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_23

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_104

    :cond_1e
    :pswitch_1e
    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_10

    :catch_23
    move-exception v3

    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_10

    :pswitch_28
    const-wide/32 v3, 0x40020000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_30
    const-wide v3, 0x400000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_41

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_10

    :cond_41
    const-wide/16 v3, 0x4000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_48
    const-wide/32 v3, 0x400000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_57

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_10

    :cond_57
    const-wide v3, 0x1000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    const/16 v1, 0x24

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_10

    :pswitch_68
    const-wide/32 v3, 0x8000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_77

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_10

    :cond_77
    const-wide/32 v3, 0x10000400

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_7f
    const-wide v3, 0x100000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto :goto_10

    :pswitch_89
    const-wide v3, 0x800040000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_94
    const-wide/16 v3, 0x2000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a3

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_10

    :cond_a3
    const-wide/32 v3, 0x8000080

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_ac
    const-wide v3, 0x4000000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_b7
    const-wide/16 v3, 0x300

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_bf
    const-wide v3, 0x201000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_ca
    const-wide/16 v3, 0x800

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d9

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_10

    :cond_d9
    const-wide/32 v3, 0x6000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_e2
    const-wide/32 v3, 0x80000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f2

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_10

    :cond_f2
    const-wide/32 v3, 0x300000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_fb
    const-wide/32 v3, 0x800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_10

    :pswitch_data_104
    .packed-switch 0x61
        :pswitch_28
        :pswitch_1e
        :pswitch_30
        :pswitch_48
        :pswitch_68
        :pswitch_1e
        :pswitch_1e
        :pswitch_7f
        :pswitch_89
        :pswitch_1e
        :pswitch_1e
        :pswitch_94
        :pswitch_ac
        :pswitch_1e
        :pswitch_b7
        :pswitch_bf
        :pswitch_1e
        :pswitch_ca
        :pswitch_1e
        :pswitch_e2
        :pswitch_fb
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_0(JJ)I
    .registers 15

    const/4 v1, 0x5

    const/16 v9, 0x1c

    const/4 v8, 0x6

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_15

    const/4 v1, 0x4

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_29

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_dc

    :cond_22
    :pswitch_22
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_14

    :catch_29
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_14

    :pswitch_31
    const-wide v0, 0x800000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_14

    :pswitch_3b
    const-wide v0, 0x200000080L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_14

    :pswitch_45
    const-wide v0, 0x10000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_56

    const/16 v0, 0x68

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :cond_56
    const-wide v0, 0x20000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_67

    const/16 v0, 0x69

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :cond_67
    const-wide v0, 0x40000080000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_14

    :pswitch_71
    const-wide v0, 0x800000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_14

    :pswitch_7b
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_14

    :pswitch_82
    const-wide/16 v6, 0x200

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_22

    const/16 v0, 0x49

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :pswitch_90
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_98
    const-wide/32 v6, 0x800000

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_22

    const/16 v0, 0x57

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_14

    :pswitch_a8
    const-wide/32 v0, 0x40000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b8

    const/16 v0, 0x52

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_14

    :cond_b8
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_c3
    const-wide/32 v0, 0x20000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto/16 :goto_14

    :pswitch_cc
    const-wide/32 v6, 0x4000000

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_22

    const/16 v0, 0x5a

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_14

    :pswitch_data_dc
    .packed-switch 0x61
        :pswitch_31
        :pswitch_22
        :pswitch_3b
        :pswitch_22
        :pswitch_45
        :pswitch_71
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_7b
        :pswitch_22
        :pswitch_82
        :pswitch_90
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_98
        :pswitch_a8
        :pswitch_c3
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_cc
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_1(JJ)I
    .registers 13

    const/4 v7, 0x5

    const-wide/16 v5, 0x0

    const/4 v0, 0x6

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_10

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_22

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_d8

    :cond_1d
    :pswitch_1d
    invoke-direct {p0, v7, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_f

    :catch_22
    move-exception v3

    invoke-direct {p0, v7, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_f

    :pswitch_27
    const-wide/16 v3, 0x4000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_2e
    const-wide/32 v3, 0x40000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_36
    const-wide v3, 0x800000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x23

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_f

    :pswitch_47
    const-wide/32 v3, 0x10000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_f

    :pswitch_56
    const-wide/32 v3, 0x100000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_65

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_f

    :cond_65
    const-wide v3, 0x4000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_76

    const/16 v1, 0x26

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_f

    :cond_76
    const-wide/32 v3, 0x40080

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_7e
    const-wide/32 v3, 0x6220000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_86
    const-wide/32 v3, 0x800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_f

    :pswitch_8e
    const-wide/16 v3, 0x200

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9b

    const/16 v3, 0x9

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_9b
    const-wide/16 v3, 0x100

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto/16 :goto_f

    :pswitch_a3
    const-wide/16 v3, 0x400

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b2

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_f

    :cond_b2
    const-wide v3, 0x101000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto/16 :goto_f

    :pswitch_bd
    const-wide v3, 0x200000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto/16 :goto_f

    :pswitch_c8
    const-wide/32 v3, 0x8000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_f

    :pswitch_data_d8
    .packed-switch 0x61
        :pswitch_27
        :pswitch_2e
        :pswitch_36
        :pswitch_47
        :pswitch_56
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_7e
        :pswitch_1d
        :pswitch_1d
        :pswitch_86
        :pswitch_1d
        :pswitch_8e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_a3
        :pswitch_bd
        :pswitch_c8
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa7_0(JJ)I
    .registers 15

    const/4 v1, 0x6

    const/16 v9, 0x1c

    const/4 v8, 0x7

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_15

    const/4 v1, 0x5

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_29

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_8c

    :cond_22
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_14

    :catch_29
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_14

    :sswitch_31
    const-wide v0, 0x800000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJ)I

    move-result v0

    goto :goto_14

    :sswitch_3b
    const-wide/32 v0, 0x20000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    const/16 v0, 0x51

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :cond_4a
    const-wide/high16 v0, 0x400000000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_58

    const/16 v0, 0x7a

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :cond_58
    const-wide v0, 0x40200000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJ)I

    move-result v0

    goto :goto_14

    :sswitch_62
    const-wide v0, 0x44000080000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJ)I

    move-result v0

    goto :goto_14

    :sswitch_6c
    const-wide v6, 0x800000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_22

    const/16 v0, 0x6f

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    :sswitch_7d
    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_22

    const/16 v0, 0x47

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_14

    nop

    :sswitch_data_8c
    .sparse-switch
        0x63 -> :sswitch_31
        0x65 -> :sswitch_3b
        0x6e -> :sswitch_62
        0x70 -> :sswitch_6c
        0x74 -> :sswitch_7d
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa7_1(JJ)I
    .registers 13

    const-wide/16 v6, 0x0

    const/4 v0, 0x7

    const/4 v5, 0x6

    and-long v1, p3, p1

    cmp-long v3, v1, v6

    if-nez v3, :cond_10

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_22

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v3, :sswitch_data_ac

    :cond_1d
    invoke-direct {p0, v5, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_f

    :catch_22
    move-exception v3

    invoke-direct {p0, v5, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_f

    :sswitch_27
    const-wide/32 v3, 0x800000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_36

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_f

    :cond_36
    const-wide v3, 0x200000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_47

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_f

    :cond_47
    const-wide v3, 0x100000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_51
    const-wide/32 v3, 0x1000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_59
    const-wide/16 v3, 0x80

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_65

    invoke-direct {p0, v0, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_f

    :cond_65
    const-wide/16 v3, 0x4000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_73

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_f

    :cond_73
    const-wide/32 v3, 0x40040000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_7b
    const-wide/32 v3, 0x200000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_83
    const-wide/16 v3, 0x100

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1d

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_f

    :sswitch_92
    const-wide/32 v3, 0x20000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1d

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_f

    :sswitch_a2
    const-wide/32 v3, 0x6000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto/16 :goto_f

    nop

    :sswitch_data_ac
    .sparse-switch
        0x65 -> :sswitch_27
        0x69 -> :sswitch_51
        0x6c -> :sswitch_59
        0x6f -> :sswitch_7b
        0x73 -> :sswitch_83
        0x74 -> :sswitch_92
        0x76 -> :sswitch_a2
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa8_0(JJ)I
    .registers 15

    const/4 v1, 0x7

    const/16 v9, 0x1c

    const/16 v8, 0x8

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_16

    const/4 v1, 0x6

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_15
    return v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_2a

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_7e

    :cond_23
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_15

    :catch_2a
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_15

    :sswitch_32
    const-wide v6, 0x40000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_23

    const/16 v0, 0x6a

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_15

    :sswitch_43
    const-wide v6, 0x800000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_23

    const/16 v0, 0x63

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_15

    :sswitch_54
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_5b
    const-wide v0, 0x200000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJ)I

    move-result v0

    goto :goto_15

    :sswitch_65
    const-wide/high16 v0, 0x40000000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_73

    const/16 v0, 0x76

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_15

    :cond_73
    const-wide v0, 0x80000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJ)I

    move-result v0

    goto :goto_15

    nop

    :sswitch_data_7e
    .sparse-switch
        0x64 -> :sswitch_32
        0x65 -> :sswitch_43
        0x69 -> :sswitch_54
        0x6f -> :sswitch_5b
        0x74 -> :sswitch_65
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa8_1(JJ)I
    .registers 14

    const/4 v8, 0x7

    const-wide/16 v6, 0x0

    const/16 v0, 0x8

    const/4 v5, 0x6

    and-long v1, p3, p1

    cmp-long v3, v1, v6

    if-nez v3, :cond_11

    invoke-direct {p0, v5, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_23

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v3, :sswitch_data_68

    :cond_1e
    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_10

    :catch_23
    move-exception v3

    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_10

    :sswitch_28
    const-wide v3, 0x106000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_1(JJ)I

    move-result v0

    goto :goto_10

    :sswitch_32
    const-wide/32 v3, 0x40000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1e

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_10

    :sswitch_41
    const-wide/32 v3, 0x40000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1e

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_10

    :sswitch_50
    const-wide/32 v3, 0x200000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1e

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_10

    :sswitch_5f
    const-wide/32 v3, 0x1000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_1(JJ)I

    move-result v0

    goto :goto_10

    nop

    :sswitch_data_68
    .sparse-switch
        0x61 -> :sswitch_28
        0x64 -> :sswitch_32
        0x65 -> :sswitch_41
        0x6e -> :sswitch_50
        0x76 -> :sswitch_5f
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa9_0(JJ)I
    .registers 15

    const/16 v9, 0x1c

    const/16 v1, 0x8

    const/16 v8, 0x9

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_17

    const/4 v1, 0x7

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_16
    return v0

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_2b

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_5c

    :cond_24
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_16

    :catch_2b
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_16

    :sswitch_33
    const-wide v6, 0x200000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_24

    const/16 v0, 0x61

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_16

    :sswitch_44
    const-wide v6, 0x80000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_24

    const/16 v0, 0x5f

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_16

    :sswitch_55
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_0(JJ)I

    move-result v0

    goto :goto_16

    :sswitch_data_5c
    .sparse-switch
        0x66 -> :sswitch_33
        0x73 -> :sswitch_44
        0x7a -> :sswitch_55
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa9_1(JJ)I
    .registers 10

    const/16 v4, 0x8

    and-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_22

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_44

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_f

    :catch_22
    move-exception v2

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    const/16 v0, 0x9

    goto :goto_f

    :sswitch_29
    const-wide/32 v2, 0x1000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_1(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_31
    const-wide v2, 0x100000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_1(JJ)I

    move-result v0

    goto :goto_f

    :sswitch_3b
    const-wide/32 v2, 0x6000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_1(JJ)I

    move-result v0

    goto :goto_f

    nop

    :sswitch_data_44
    .sparse-switch
        0x61 -> :sswitch_29
        0x64 -> :sswitch_31
        0x74 -> :sswitch_3b
    .end sparse-switch
.end method

.method private jjStartNfaWithStates_0(III)I
    .registers 5

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private jjStartNfaWithStates_1(III)I
    .registers 5

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final jjStartNfa_0(IJJJ)I
    .registers 10

    invoke-direct/range {p0 .. p7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private jjStopAtPos(II)I
    .registers 4

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJJJ)I
    .registers 16

    const/4 v0, 0x4

    const/16 v7, 0x87

    const/4 v2, -0x1

    const/16 v1, 0x1c

    const-wide/16 v5, 0x0

    packed-switch p1, :pswitch_data_18e

    move v0, v2

    :cond_c
    :goto_c
    return v0

    :pswitch_d
    const-wide v3, 0x40000000040000L

    and-long/2addr v3, p6

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    const-wide/16 v3, 0x4

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-nez v0, :cond_28

    const-wide v3, 0x402000000000L

    and-long/2addr v3, p6

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2b

    :cond_28
    const/16 v0, 0x2d

    goto :goto_c

    :cond_2b
    const-wide v3, 0xfffffffffffff80L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_39

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    move v0, v1

    goto :goto_c

    :cond_39
    move v0, v2

    goto :goto_c

    :pswitch_3b
    const-wide v3, 0xfffffffbfe7ff80L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_51

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4f

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_4f
    move v0, v1

    goto :goto_c

    :cond_51
    const-wide/32 v3, 0x40180000

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5b

    move v0, v1

    goto :goto_c

    :cond_5b
    const-wide/16 v0, 0x4

    and-long/2addr v0, p4

    cmp-long v0, v0, v5

    if-eqz v0, :cond_65

    const/16 v0, 0x38

    goto :goto_c

    :cond_65
    move v0, v2

    goto :goto_c

    :pswitch_67
    const-wide v3, 0x100004c10000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_73

    move v0, v1

    goto :goto_c

    :cond_73
    const-wide v3, 0xeffffb3aff7ff80L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_89

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_87

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_87
    move v0, v1

    goto :goto_c

    :cond_89
    move v0, v2

    goto :goto_c

    :pswitch_8b
    const-wide v3, 0x288009020605800L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_98

    move v0, v1

    goto/16 :goto_c

    :cond_98
    const-wide v3, 0xc77ff2b8f97a780L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_aa

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_c

    :cond_aa
    move v0, v2

    goto/16 :goto_c

    :pswitch_ad
    const-wide v3, 0x446df2b80960380L

    and-long/2addr v3, p4

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c2

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-eq v2, v0, :cond_bf

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_bf
    move v0, v1

    goto/16 :goto_c

    :cond_c2
    const-wide v3, 0x83120000f01a400L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_cf

    move v0, v1

    goto/16 :goto_c

    :cond_cf
    move v0, v2

    goto/16 :goto_c

    :pswitch_d2
    const-wide v3, 0x22582100100100L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_df

    move v0, v1

    goto/16 :goto_c

    :cond_df
    const-wide v3, 0x444870a84860280L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_f1

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_c

    :cond_f1
    move v0, v2

    goto/16 :goto_c

    :pswitch_f4
    const-wide v3, 0x30004840200L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_101

    move v0, v1

    goto/16 :goto_c

    :cond_101
    const-wide v3, 0x444840a80020080L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_113

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_c

    :cond_113
    move v0, v2

    goto/16 :goto_c

    :pswitch_116
    const-wide v3, 0x44040a80000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_128

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_c

    :cond_128
    const-wide v3, 0x400800000020080L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_135

    move v0, v1

    goto/16 :goto_c

    :cond_135
    move v0, v2

    goto/16 :goto_c

    :pswitch_138
    const-wide v3, 0x40040800000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_145

    move v0, v1

    goto/16 :goto_c

    :cond_145
    const-wide v3, 0x4000280000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_158

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_c

    :cond_158
    move v0, v2

    goto/16 :goto_c

    :pswitch_15b
    const-wide v3, 0x280000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_168

    move v0, v1

    goto/16 :goto_c

    :cond_168
    const-wide/high16 v3, 0x4000000000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_178

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_c

    :cond_178
    move v0, v2

    goto/16 :goto_c

    :pswitch_17b
    const-wide/high16 v3, 0x4000000000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_18b

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_c

    :cond_18b
    move v0, v2

    goto/16 :goto_c

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_3b
        :pswitch_67
        :pswitch_8b
        :pswitch_ad
        :pswitch_d2
        :pswitch_f4
        :pswitch_116
        :pswitch_138
        :pswitch_15b
        :pswitch_17b
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .registers 12

    const/4 v7, 0x3

    const/16 v6, 0x36

    const/4 v1, -0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x6

    packed-switch p1, :pswitch_data_138

    move v0, v1

    :cond_b
    :goto_b
    return v0

    :pswitch_c
    const-wide v2, 0x3000ffffffff80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    goto :goto_b

    :cond_19
    move v0, v1

    goto :goto_b

    :pswitch_1b
    const-wide v2, 0x80000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide v2, 0x3000ff7fffff80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_35

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_b

    :cond_35
    move v0, v1

    goto :goto_b

    :pswitch_37
    const-wide v2, 0x30000000001000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide v2, 0xff7fffef80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_51

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_b

    :cond_51
    move v0, v1

    goto :goto_b

    :pswitch_53
    const-wide v2, 0xa000070000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide v2, 0x5f7ff8ef80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_70

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v7, :cond_b

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_b

    :cond_70
    move v0, v1

    goto :goto_b

    :pswitch_72
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide v2, 0x5f5ffeef80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8a

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_b

    :cond_8a
    move v0, v1

    goto :goto_b

    :pswitch_8c
    const-wide v2, 0x140048a800L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide v2, 0x4b5fb64780L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a7

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_b

    :cond_a7
    move v0, v1

    goto/16 :goto_b

    :pswitch_aa
    const-wide v2, 0x4818100700L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide v2, 0x347a64080L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c8

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v0, :cond_b

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_b

    :cond_c8
    move v0, v1

    goto/16 :goto_b

    :pswitch_cb
    const-wide v2, 0x200824180L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide v2, 0x147240000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e6

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_b

    :cond_e6
    move v0, v1

    goto/16 :goto_b

    :pswitch_e9
    const-wide/32 v2, 0x40240000

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide v2, 0x107000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_103

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_b

    :cond_103
    move v0, v1

    goto/16 :goto_b

    :pswitch_106
    const-wide v2, 0x107000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_118

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_b

    :cond_118
    move v0, v1

    goto/16 :goto_b

    :pswitch_11b
    const-wide v2, 0x106000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide/32 v2, 0x1000000

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_135

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_b

    :cond_135
    move v0, v1

    goto/16 :goto_b

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1b
        :pswitch_37
        :pswitch_53
        :pswitch_72
        :pswitch_8c
        :pswitch_aa
        :pswitch_cb
        :pswitch_e9
        :pswitch_106
        :pswitch_11b
    .end packed-switch
.end method


# virtual methods
.method CommonTokenAction(Lcom/samsung/javaomp/compiler/Token;)V
    .registers 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method MoreLexicalActions()V
    .registers 4

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_28

    :goto_10
    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    goto :goto_10

    :pswitch_data_28
    .packed-switch 0x41
        :pswitch_11
    .end packed-switch
.end method

.method public ReInit(Lcom/samsung/javaomp/compiler/JavaCharStream;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lcom/samsung/javaomp/compiler/JavaCharStream;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInit(Lcom/samsung/javaomp/compiler/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method SkipLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V
    .registers 6

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_1e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    goto :goto_5

    :pswitch_data_1e
    .packed-switch 0x3a
        :pswitch_6
    .end packed-switch
.end method

.method public SwitchTo(I)V
    .registers 5

    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_25

    :cond_5
    new-instance v0, Lcom/samsung/javaomp/compiler/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_25
    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V
    .registers 9

    const/16 v6, 0xb8

    const/16 v5, 0xb7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    sparse-switch v0, :sswitch_data_134

    :cond_c
    :goto_c
    return-void

    :sswitch_d
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget-object v1, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto :goto_c

    :sswitch_30
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    sput-boolean v4, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    goto :goto_c

    :sswitch_46
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto :goto_c

    :sswitch_61
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto :goto_c

    :sswitch_7c
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_c

    :sswitch_98
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x8a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x8a

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    sget-boolean v0, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    goto/16 :goto_c

    :sswitch_bb
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x8b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x8b

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    sget-boolean v0, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    sget v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    if-nez v0, :cond_c

    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_c

    :sswitch_e5
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    const/16 v0, 0xb9

    iput v0, p1, Lcom/samsung/javaomp/compiler/Token;->kind:I

    move-object v0, p1

    check-cast v0, Lcom/samsung/javaomp/compiler/MyToken;

    iput v5, v0, Lcom/samsung/javaomp/compiler/MyToken;->realKind:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    const-string v0, ">"

    iput-object v0, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    goto/16 :goto_c

    :sswitch_10c
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    const/16 v0, 0xb9

    iput v0, p1, Lcom/samsung/javaomp/compiler/Token;->kind:I

    move-object v0, p1

    check-cast v0, Lcom/samsung/javaomp/compiler/MyToken;

    iput v6, v0, Lcom/samsung/javaomp/compiler/MyToken;->realKind:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0, v4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    const-string v0, ">"

    iput-object v0, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    goto/16 :goto_c

    nop

    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_30
        0x1d -> :sswitch_46
        0x1f -> :sswitch_61
        0x20 -> :sswitch_7c
        0x8a -> :sswitch_98
        0x8b -> :sswitch_bb
        0xb7 -> :sswitch_e5
        0xb8 -> :sswitch_10c
    .end sparse-switch
.end method

.method public getNextToken()Lcom/samsung/javaomp/compiler/Token;
    .registers 13

    const/4 v11, -0x1

    const/16 v10, 0x46

    const/4 v6, 0x1

    const v5, 0x7fffffff

    const/4 v7, 0x0

    const/4 v0, 0x0

    move v1, v7

    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->BeginToken()C

    move-result v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_69

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    :goto_1d
    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    packed-switch v2, :pswitch_data_1a0

    :cond_22
    :goto_22
    move v2, v1

    :goto_23
    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    if-eq v1, v5, :cond_143

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_38

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    :cond_38
    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoToken:[J

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v1, v3

    const-wide/16 v8, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v8, v1

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-eqz v1, :cond_cd

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjFillToken()Lcom/samsung/javaomp/compiler/Token;

    move-result-object v1

    iput-object v0, v1, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    invoke-virtual {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->TokenLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    if-eq v0, v11, :cond_67

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    :cond_67
    move-object v0, v1

    :goto_68
    return-object v0

    :catch_69
    move-exception v1

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjFillToken()Lcom/samsung/javaomp/compiler/Token;

    move-result-object v1

    iput-object v0, v1, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    move-object v0, v1

    goto :goto_68

    :pswitch_74
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_22

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v3, 0xba

    if-le v2, v3, :cond_22

    const/16 v2, 0xba

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    move v2, v1

    goto :goto_23

    :pswitch_8c
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_22

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v3, 0x3b

    if-le v2, v3, :cond_22

    const/16 v2, 0x3b

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    move v2, v1

    goto :goto_23

    :pswitch_a4
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_22

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    if-le v2, v10, :cond_22

    iput v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    move v2, v1

    goto/16 :goto_23

    :pswitch_b9
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_22

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    if-le v2, v10, :cond_22

    iput v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_22

    :cond_cd
    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSkip:[J

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v1, v3

    const-wide/16 v8, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v8, v1

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-eqz v1, :cond_121

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSpecial:[J

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v1, v3

    const-wide/16 v8, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v8, v1

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-eqz v1, :cond_11c

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjFillToken()Lcom/samsung/javaomp/compiler/Token;

    move-result-object v1

    if-nez v0, :cond_116

    move-object v0, v1

    :goto_100
    invoke-virtual {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SkipLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V

    :goto_103
    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    if-eq v1, v11, :cond_19d

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    move v1, v2

    goto/16 :goto_a

    :cond_116
    iput-object v0, v1, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    iput-object v1, v0, Lcom/samsung/javaomp/compiler/Token;->next:Lcom/samsung/javaomp/compiler/Token;

    move-object v0, v1

    goto :goto_100

    :cond_11c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SkipLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V

    goto :goto_103

    :cond_121
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->MoreLexicalActions()V

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    if-eq v1, v11, :cond_134

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    :cond_134
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    :try_start_136
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_13e} :catch_141

    move v1, v7

    goto/16 :goto_1d

    :catch_141
    move-exception v0

    move v2, v7

    :cond_143
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndLine()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndColumn()I

    move-result v4

    const/4 v0, 0x0

    :try_start_150
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_15b} :catch_173

    move v1, v7

    move-object v5, v0

    :goto_15d
    if-nez v1, :cond_169

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0, v6}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    if-gt v2, v6, :cond_196

    const-string v0, ""

    :goto_168
    move-object v5, v0

    :cond_169
    new-instance v0, Lcom/samsung/javaomp/compiler/TokenMgrError;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    iget-char v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_173
    move-exception v0

    if-gt v2, v6, :cond_18a

    const-string v0, ""

    :goto_178
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v1, v5, :cond_184

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v1, v5, :cond_191

    :cond_184
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    move-object v5, v0

    move v4, v7

    goto :goto_15d

    :cond_18a
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_178

    :cond_191
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    move-object v5, v0

    goto :goto_15d

    :cond_196
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_168

    :cond_19d
    move v1, v2

    goto/16 :goto_a

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_74
        :pswitch_8c
        :pswitch_a4
        :pswitch_b9
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/samsung/javaomp/compiler/Token;
    .registers 7

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_e
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getBeginLine()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getBeginColumn()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndLine()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndColumn()I

    move-result v4

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v0}, Lcom/samsung/javaomp/compiler/MyToken;->newToken(ILjava/lang/String;)Lcom/samsung/javaomp/compiler/Token;

    move-result-object v0

    iput v1, v0, Lcom/samsung/javaomp/compiler/Token;->beginLine:I

    iput v3, v0, Lcom/samsung/javaomp/compiler/Token;->endLine:I

    iput v2, v0, Lcom/samsung/javaomp/compiler/Token;->beginColumn:I

    iput v4, v0, Lcom/samsung/javaomp/compiler/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
