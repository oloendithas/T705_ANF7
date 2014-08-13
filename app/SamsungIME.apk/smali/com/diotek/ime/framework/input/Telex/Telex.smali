.class public Lcom/diotek/ime/framework/input/Telex/Telex;
.super Ljava/lang/Object;
.source "Telex.java"


# static fields
.field private static final ACCENT_ACUTE:I = 0x1

.field private static final ACCENT_BREVE:I = 0x8

.field private static final ACCENT_CIRCUMFLEX:I = 0x6

.field private static final ACCENT_CONSONANT_D:I = 0x9

.field private static final ACCENT_DOT_BELOW:I = 0x5

.field private static final ACCENT_GRAVE:I = 0x2

.field private static final ACCENT_HOOK:I = 0x3

.field private static final ACCENT_HORN:I = 0x7

.field private static final ACCENT_NONE:I = 0x0

.field private static final ACCENT_NOT_ACCENT:I = -0x1

.field private static final ACCENT_TILDE:I = 0x4

.field private static final ALL_VOWEL:Ljava/lang/String; = "[i\u00ed\u00ec\u1ec9\u0129\u1ecb][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7a\u00e1\u00e0\u1ea3\u00e3\u1ea1u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][u\u00fa\u00f9\u1ee7\u0169\u1ee5a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1eadi\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3a\u00e1\u00e0\u1ea3\u00e3\u1ea1u\u00fa\u00f9\u1ee7\u0169\u1ee5i\u00ed\u00ec\u1ec9\u0129\u1ecb]$|[a\u00e1\u00e0\u1ea3\u00e3\u1ea1][i\u00ed\u00ec\u1ec9\u0129\u1ecbu\u00fa\u00f9\u1ee7\u0169\u1ee5y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5o\u00f3\u00f2\u1ecf\u00f5\u1ecd]$|[\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3][i\u00ed\u00ec\u1ec9\u0129\u1ecb]$|[e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7][u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[e\u00e9\u00e8\u1ebb\u1ebd\u1eb9][o\u00f3\u00f2\u1ecf\u00f5\u1ecd]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9][o\u00f3\u00f2\u1ecf\u00f5\u1ecd]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][a\u00e1\u00e0\u1ea3\u00e3\u1ea1u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3][i\u00ed\u00ec\u1ec9\u0129\u1ecbu\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3][i\u00ed\u00ec\u1ec9\u0129\u1ecbu\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7][u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][a\u00e1\u00e0\u1ea3\u00e3\u1ea1][i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5]$"

.field public static final ALL_VOWEL_CHAR:Ljava/lang/String; = "a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5"

.field private static final CHAR_a:Ljava/lang/String; = "a\u00e1\u00e0\u1ea3\u00e3\u1ea1"

.field private static final CHAR_aa:Ljava/lang/String; = "\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead"

.field private static final CHAR_aw:Ljava/lang/String; = "\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7"

.field private static final CHAR_d:Ljava/lang/String; = "d\u0111D\u0110"

.field private static final CHAR_e:Ljava/lang/String; = "e\u00e9\u00e8\u1ebb\u1ebd\u1eb9"

.field private static final CHAR_ee:Ljava/lang/String; = "\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7"

.field private static final CHAR_i:Ljava/lang/String; = "i\u00ed\u00ec\u1ec9\u0129\u1ecb"

.field private static final CHAR_o:Ljava/lang/String; = "o\u00f3\u00f2\u1ecf\u00f5\u1ecd"

.field private static final CHAR_oo:Ljava/lang/String; = "\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9"

.field private static final CHAR_ow:Ljava/lang/String; = "\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3"

.field private static final CHAR_u:Ljava/lang/String; = "u\u00fa\u00f9\u1ee7\u0169\u1ee5"

.field private static final CHAR_uw:Ljava/lang/String; = "\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1"

.field private static final CHAR_y:Ljava/lang/String; = "y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5"

.field private static final CIRCUMFLEX_OR_HORN_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONSONANT:Ljava/lang/String; = "bcd\u0111fghjklmnpqrstvwxz"

.field private static final EU_PATTERN:Ljava/util/regex/Pattern;

.field public static final INPUTMODE_TELEX:I = 0x1

.field public static final INPUTMODE_VNI:I = 0x2

.field private static final MAX_VIETNAMESE_WORD_LENGTH:I = 0x8

.field private static final NULL_CHAR:C = '\u0000'

.field private static final OAU_PATTERN:Ljava/util/regex/Pattern;

.field private static final POST_CONSONANT:Ljava/lang/String; = "chptmng"

.field private static final SYMBOL:Ljava/lang/String; = "[+\u00d7\u00f7=%_\u20ac\u00a3\u00a5\u20a9!@#$/^&*()]"

.field private static final SYMBOL2:Ljava/lang/String; = "[-\'\":;,?`~\\|><{}]"

.field private static final TONE_MARK:Ljava/lang/String; = "\u0301\u0300\u0309\u0303\u0323"

.field private static final UA_PATTERN:Ljava/util/regex/Pattern;

.field private static final UO_PATTERN:Ljava/util/regex/Pattern;

.field private static final UYE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VOWEL_HAS_POSTCONSONANT:Ljava/lang/String; = "[i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1eade\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$"

.field private static final mCharMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static mFirstVowel:C

.field private static mIndexOfLastWord:I

.field private static mInputMode:I

.field private static mLastWord:Ljava/lang/String;

.field private static mPostConsonant:Ljava/lang/String;

.field private static mPreConsonant:Ljava/lang/String;

.field private static mSecondVowel:C

.field private static mToneMark:C

.field private static mToneMarkIndex:I

.field private static mValidVietWord:Z

.field private static mVowelCount:I

.field private static mVowelIndexs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mVowels:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mInputMode:I

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    .line 61
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x60061

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00e2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x80061

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0103"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x60103

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00e2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x80103

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aa"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x600e2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aa"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x800e2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0103"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x60041

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00c2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x80041

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0102"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x60102

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00c2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x80102

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AA"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x600c2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AA"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x800c2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0102"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x60065

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00ea"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x600ea

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ee"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x60045

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00ca"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x600ca

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x6006f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x7006f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u01a1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x601a1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x701a1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x600f4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x700f4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u01a1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x6004f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00d4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x7004f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u01a0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x601a0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00d4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x701a0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OO"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x600d4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OO"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x700d4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u01a0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x70075

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u01b0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x701b0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uu"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x70055

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u01af"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x701af

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UU"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x90064

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0111"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x90111

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dd"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x90044

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0110"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    const v1, 0x90110

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DD"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    const-string v0, "[i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7][u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7][u\u00fa\u00f9\u1ee7\u0169\u1ee5]$"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->EU_PATTERN:Ljava/util/regex/Pattern;

    .line 116
    const-string v0, "[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead]$"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->OAU_PATTERN:Ljava/util/regex/Pattern;

    .line 118
    const-string v0, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead]([i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5])?$"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->UA_PATTERN:Ljava/util/regex/Pattern;

    .line 120
    const-string v0, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9]([i\u00ed\u00ec\u1ec9\u0129\u1ecbu\u00fa\u00f9\u1ee7\u0169\u1ee5])?$"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->UO_PATTERN:Ljava/util/regex/Pattern;

    .line 122
    const-string v0, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->UYE_PATTERN:Ljava/util/regex/Pattern;

    .line 124
    const-string v0, ".*[\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3].*"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->CIRCUMFLEX_OR_HORN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static caculateToneMarkPosition(Ljava/lang/StringBuilder;)I
    .locals 9
    .param p0, "currentWord"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 256
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mValidVietWord:Z

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 272
    :goto_0
    return v2

    .line 257
    :cond_1
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-lez v2, :cond_5

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->CIRCUMFLEX_OR_HORN_PATTERN:Ljava/util/regex/Pattern;

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 258
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_b

    .line 259
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 260
    .local v1, "vowelChar":C
    const-string v2, "e\u00e9\u00e8\u1ebb\u1ebd\u1eb9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-static {v1}, Lcom/diotek/ime/framework/input/Telex/Telex;->isCircumflexOrHornChar(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 258
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 261
    :cond_3
    const-string v2, "\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_4

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v4, "[\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3]([ui])?$"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 262
    :cond_4
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 264
    .end local v0    # "index":I
    .end local v1    # "vowelChar":C
    :cond_5
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-eq v2, v5, :cond_6

    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v2, v7, :cond_8

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    .line 266
    :cond_6
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v2, v5, :cond_7

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_2

    .line 268
    :cond_8
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-eq v2, v8, :cond_9

    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v2, v7, :cond_b

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 270
    :cond_9
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v2, v8, :cond_a

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_3

    :cond_b
    move v2, v3

    .line 272
    goto/16 :goto_0
.end method

.method private static completeUO(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "currentWord"    # Ljava/lang/StringBuilder;
    .param p1, "vowel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 247
    const-string v0, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5][\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method private static compose(CC)C
    .locals 3
    .param p0, "inputChar"    # C
    .param p1, "tone"    # C

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1
.end method

.method private static deCompose(C)C
    .locals 3
    .param p0, "inputChar"    # C

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1
.end method

.method private static getAccent(Ljava/lang/StringBuilder;C)I
    .locals 7
    .param p0, "currentWord"    # Ljava/lang/StringBuilder;
    .param p1, "inputChar"    # C

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 500
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 501
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-gtz v2, :cond_1

    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v2, 0x39

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 589
    :cond_0
    :goto_0
    return v0

    .line 502
    :cond_1
    invoke-static {p1}, Lcom/diotek/ime/framework/input/Telex/Telex;->isToneMark(C)Z

    move-result v2

    if-nez v2, :cond_4

    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mInputMode:I

    if-eq v2, v3, :cond_2

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mInputMode:I

    if-ne v2, v3, :cond_4

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 503
    goto :goto_0

    .line 505
    :cond_4
    const/4 v0, -0x1

    .line 506
    .local v0, "accent":I
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 562
    goto :goto_0

    .line 510
    :sswitch_0
    const/4 v0, 0x1

    .line 566
    :cond_5
    :goto_1
    if-ne v0, v6, :cond_c

    .line 567
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[e\u00e9\u00e8\u1ebb\u1ebd\u1eb9]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v3, "ng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v3, "gi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 515
    :sswitch_1
    const/4 v0, 0x2

    .line 516
    goto :goto_1

    .line 520
    :sswitch_2
    const/4 v0, 0x3

    .line 521
    goto :goto_1

    .line 525
    :sswitch_3
    const/4 v0, 0x4

    .line 526
    goto :goto_1

    .line 530
    :sswitch_4
    const/4 v0, 0x5

    .line 531
    goto :goto_1

    .line 534
    :sswitch_5
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    if-ltz v2, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    .line 537
    :sswitch_6
    const/4 v0, 0x6

    .line 538
    goto :goto_1

    .line 542
    :sswitch_7
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    sget-object v3, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v2, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v1, :cond_6

    move v0, v1

    goto :goto_0

    .line 543
    :cond_6
    const/4 v0, 0x6

    .line 544
    goto :goto_1

    .line 547
    :sswitch_8
    const/4 v0, 0x7

    .line 548
    goto :goto_1

    .line 550
    :sswitch_9
    const/16 v0, 0x8

    .line 551
    goto :goto_1

    .line 554
    :sswitch_a
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v2, v3, :cond_8

    :cond_7
    move v0, v1

    .line 557
    goto/16 :goto_0

    .line 559
    :cond_8
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 568
    :cond_9
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[a\u00e1\u00e0\u1ea3\u00e3\u1ea1]i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    goto/16 :goto_0

    .line 569
    :cond_a
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[a\u00e1\u00e0\u1ea3\u00e3\u1ea1e\u00e9\u00e8\u1ebb\u1ebd\u1eb9]o|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][a\u00e1\u00e0\u1ea3\u00e3\u1ea1e\u00e9\u00e8\u1ebb\u1ebd\u1eb9]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    goto/16 :goto_0

    .line 570
    :cond_b
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3][u\u00fa\u00f9\u1ee7\u0169\u1ee5]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    goto/16 :goto_0

    .line 573
    :cond_c
    const/4 v2, 0x7

    if-ne v0, v2, :cond_10

    .line 574
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    goto/16 :goto_0

    .line 575
    :cond_d
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    goto/16 :goto_0

    .line 576
    :cond_e
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][a\u00e1\u00e0\u1ea3\u00e3\u1ea1]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    .line 577
    :cond_f
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mInputMode:I

    if-ne v2, v4, :cond_10

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead]$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v0, 0x8

    .line 580
    :cond_10
    if-lt v0, v6, :cond_12

    const/16 v2, 0x8

    if-gt v0, v2, :cond_12

    .line 581
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9]|[a\u00e1\u00e0\u1ea3\u00e3\u1ea1]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v3, "nh|ch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 582
    :cond_11
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, "[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][a\u00e1\u00e0\u1ea3\u00e3\u1ea1]$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v3, "nh|ch|p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    .line 585
    :cond_12
    if-lt v0, v4, :cond_0

    if-gt v0, v5, :cond_0

    .line 586
    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v3, "c$|ch$|p$|t$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 506
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_5
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_4
        0x36 -> :sswitch_6
        0x37 -> :sswitch_8
        0x38 -> :sswitch_9
        0x39 -> :sswitch_a
        0x61 -> :sswitch_7
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x66 -> :sswitch_1
        0x6a -> :sswitch_4
        0x6f -> :sswitch_7
        0x72 -> :sswitch_2
        0x73 -> :sswitch_0
        0x77 -> :sswitch_8
        0x78 -> :sswitch_3
        0x7a -> :sswitch_5
        0x300 -> :sswitch_1
        0x301 -> :sswitch_0
        0x303 -> :sswitch_3
        0x309 -> :sswitch_2
        0x323 -> :sswitch_4
    .end sparse-switch
.end method

.method private static getKey(CI)I
    .locals 1
    .param p0, "inputChar"    # C
    .param p1, "accent"    # I

    .prologue
    .line 285
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p0

    return v0
.end method

.method private static getVietChar(CI)Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "inputChar"    # C
    .param p1, "accent"    # I

    .prologue
    const/4 v7, 0x0

    .line 289
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    .line 290
    .local v1, "isLowerCase":Z
    if-eqz v1, :cond_2

    const-string v4, "a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5"

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 291
    .local v0, "charIndex":I
    :goto_0
    const-string v4, "d\u0111D\u0110"

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    move v3, p0

    .line 292
    .local v3, "vowelNoneTone":C
    :goto_1
    if-nez v1, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 293
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v2, "replacedVowel":Ljava/lang/StringBuilder;
    if-nez p1, :cond_5

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    :goto_2
    return-object v2

    .line 290
    .end local v0    # "charIndex":I
    .end local v2    # "replacedVowel":Ljava/lang/StringBuilder;
    .end local v3    # "vowelNoneTone":C
    :cond_2
    const-string v4, "a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5"

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0

    .line 291
    .restart local v0    # "charIndex":I
    :cond_3
    rem-int/lit8 v4, v0, 0x6

    if-nez v4, :cond_4

    const-string v4, "a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_4
    const-string v4, "a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5"

    rem-int/lit8 v5, v0, 0x6

    sub-int v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 296
    .restart local v2    # "replacedVowel":Ljava/lang/StringBuilder;
    .restart local v3    # "vowelNoneTone":C
    :cond_5
    const/4 v4, 0x6

    if-lt p1, v4, :cond_7

    const/16 v4, 0x9

    if-gt p1, v4, :cond_7

    .line 297
    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    invoke-static {v3, p1}, Lcom/diotek/ime/framework/input/Telex/Telex;->getKey(CI)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mCharMap:Landroid/util/SparseArray;

    invoke-static {v3, p1}, Lcom/diotek/ime/framework/input/Telex/Telex;->getKey(CI)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 298
    :cond_6
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    rem-int/lit8 v4, v0, 0x6

    if-lez v4, :cond_1

    .line 299
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const-string v5, "\u0301\u0300\u0309\u0303\u0323"

    rem-int/lit8 v6, v0, 0x6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->compose(CC)C

    move-result v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 301
    :cond_7
    const/4 v4, 0x1

    if-lt p1, v4, :cond_1

    const/4 v4, 0x5

    if-gt p1, v4, :cond_1

    .line 302
    rem-int/lit8 v4, v0, 0x6

    if-eq v4, p1, :cond_8

    .line 303
    const-string v4, "\u0301\u0300\u0309\u0303\u0323"

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/input/Telex/Telex;->compose(CC)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 305
    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private static getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "vietWord"    # Ljava/lang/StringBuilder;
    .param p1, "index"    # I
    .param p2, "accent"    # I
    .param p3, "inputChar"    # C
    .param p4, "allowDouble"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 313
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3, p2}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietChar(CI)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 314
    .local v2, "vietChar":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {p0, p1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Lcom/diotek/ime/framework/input/Telex/Telex;->isToneMark(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/diotek/ime/framework/input/Telex/Telex;->updateWordProperties(Ljava/lang/StringBuilder;)V

    .line 322
    invoke-static {p0}, Lcom/diotek/ime/framework/input/Telex/Telex;->caculateToneMarkPosition(Ljava/lang/StringBuilder;)I

    move-result v1

    .line 323
    .local v1, "toneMarkPosition":I
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    if-eq v3, v4, :cond_1

    if-eq v1, v4, :cond_1

    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    if-eq v3, v1, :cond_1

    if-lt p2, v5, :cond_1

    const/16 v3, 0x8

    if-gt p2, v3, :cond_1

    .line 324
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    invoke-static {p0, v3}, Lcom/diotek/ime/framework/input/Telex/Telex;->removeToneMark(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    sget-char v5, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMark:C

    invoke-static {v4, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getAccent(Ljava/lang/StringBuilder;C)I

    move-result v4

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietChar(CI)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 326
    .local v0, "replaceChar":C
    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 327
    sput p1, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    .line 329
    .end local v0    # "replaceChar":C
    :cond_1
    return-object p0

    .line 318
    .end local v1    # "toneMarkPosition":I
    :cond_2
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getVietnameseInputMode()I
    .locals 1

    .prologue
    .line 281
    sget v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mInputMode:I

    return v0
.end method

.method private static initWordProperties(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p0, "currentWord"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 385
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    .line 386
    sput v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    .line 387
    sput v5, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    .line 388
    sput-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMark:C

    .line 389
    const-string v3, ""

    sput-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mLastWord:Ljava/lang/String;

    .line 390
    sput v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mIndexOfLastWord:I

    .line 391
    sput-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    sput-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mSecondVowel:C

    .line 392
    const-string v3, ""

    sput-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v3, ""

    sput-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v3, ""

    sput-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    .line 393
    sput-boolean v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mValidVietWord:Z

    .line 395
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 396
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mIndexOfLastWord:I

    .line 398
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_2

    .line 399
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mIndexOfLastWord:I

    .line 402
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mIndexOfLastWord:I

    if-lt v2, v3, :cond_7

    .line 403
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 405
    .local v1, "currentChar":C
    invoke-static {v1}, Lcom/diotek/ime/framework/input/Telex/Telex;->isVowel(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 402
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 408
    :cond_4
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mIndexOfLastWord:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_6

    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-lt v3, v6, :cond_6

    const/16 v3, 0x75

    if-ne v1, v3, :cond_5

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v4, 0x71

    if-eq v3, v4, :cond_3

    :cond_5
    const/16 v3, 0x69

    if-ne v1, v3, :cond_6

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sget v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mIndexOfLastWord:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-gt v3, v4, :cond_3

    .line 412
    :cond_6
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    .line 414
    const-string v3, "a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 415
    .local v0, "charIndex":I
    if-lez v0, :cond_3

    rem-int/lit8 v3, v0, 0x6

    if-eqz v3, :cond_3

    sput v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    const-string v3, "\u0301\u0300\u0309\u0303\u0323"

    rem-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sput-char v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMark:C

    goto :goto_1

    .line 417
    .end local v0    # "charIndex":I
    .end local v1    # "currentChar":C
    :cond_7
    invoke-static {p0}, Lcom/diotek/ime/framework/input/Telex/Telex;->updateWordProperties(Ljava/lang/StringBuilder;)V

    .line 418
    return-void
.end method

.method public static isCircumflexOrHornChar(C)Z
    .locals 4
    .param p0, "inputChar"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 471
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 472
    .local v0, "lowerChar":C
    const-string v2, "\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v1

    .line 473
    :cond_1
    const-string v2, "\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 474
    const-string v2, "\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 475
    const-string v2, "\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 476
    const-string v2, "\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 477
    const-string v2, "\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 478
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isConsonant(C)Z
    .locals 2
    .param p0, "inputChar"    # C

    .prologue
    .line 482
    const-string v0, "bcd\u0111fghjklmnpqrstvwxz"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPostConsonant(C)Z
    .locals 2
    .param p0, "inputChar"    # C

    .prologue
    .line 486
    const-string v0, "chptmng"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecapture(Ljava/lang/StringBuilder;C)Z
    .locals 2
    .param p0, "currentWord"    # Ljava/lang/StringBuilder;
    .param p1, "inputChar"    # C

    .prologue
    .line 463
    invoke-static {p0}, Lcom/diotek/ime/framework/input/Telex/Telex;->initWordProperties(Ljava/lang/StringBuilder;)V

    .line 464
    invoke-static {p0, p1}, Lcom/diotek/ime/framework/input/Telex/Telex;->getAccent(Ljava/lang/StringBuilder;C)I

    move-result v0

    .line 465
    .local v0, "accent":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/diotek/ime/framework/input/Telex/Telex;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/diotek/ime/framework/input/Telex/Telex;->isPostConsonant(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    const/4 v1, 0x0

    .line 467
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isToneMark(C)Z
    .locals 1
    .param p0, "inputChar"    # C

    .prologue
    .line 495
    const/16 v0, 0x300

    if-eq p0, v0, :cond_0

    const/16 v0, 0x301

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309

    if-eq p0, v0, :cond_0

    const/16 v0, 0x303

    if-eq p0, v0, :cond_0

    const/16 v0, 0x323

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidVietWord(Ljava/lang/String;)Z
    .locals 8
    .param p0, "currentWord"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v2, v3

    .line 381
    :goto_0
    return v2

    .line 334
    :cond_0
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-le v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 336
    .local v0, "currentWordLength":I
    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 337
    :cond_2
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v2, v5, :cond_3

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v5, v2

    if-gt v2, v4, :cond_4

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v5, v2

    if-gt v2, v4, :cond_4

    :cond_3
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v2, v6, :cond_5

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v5, v2

    if-le v2, v4, :cond_5

    :cond_4
    move v2, v3

    .line 338
    goto :goto_0

    .line 341
    :cond_5
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-le v2, v4, :cond_6

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[i\u00ed\u00ec\u1ec9\u0129\u1ecb][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7a\u00e1\u00e0\u1ea3\u00e3\u1ea1u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][u\u00fa\u00f9\u1ee7\u0169\u1ee5a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1eadi\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3a\u00e1\u00e0\u1ea3\u00e3\u1ea1u\u00fa\u00f9\u1ee7\u0169\u1ee5i\u00ed\u00ec\u1ec9\u0129\u1ecb]$|[a\u00e1\u00e0\u1ea3\u00e3\u1ea1][i\u00ed\u00ec\u1ec9\u0129\u1ecbu\u00fa\u00f9\u1ee7\u0169\u1ee5y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5o\u00f3\u00f2\u1ecf\u00f5\u1ecd]$|[\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3][i\u00ed\u00ec\u1ec9\u0129\u1ecb]$|[e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7][u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[e\u00e9\u00e8\u1ebb\u1ebd\u1eb9][o\u00f3\u00f2\u1ecf\u00f5\u1ecd]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9][o\u00f3\u00f2\u1ecf\u00f5\u1ecd]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][a\u00e1\u00e0\u1ea3\u00e3\u1ea1u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3][i\u00ed\u00ec\u1ec9\u0129\u1ecbu\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3][i\u00ed\u00ec\u1ec9\u0129\u1ecbu\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7][u\u00fa\u00f9\u1ee7\u0169\u1ee5]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][a\u00e1\u00e0\u1ea3\u00e3\u1ea1][i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5]$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_0

    .line 344
    :cond_6
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v5, "[+\u00d7\u00f7=%_\u20ac\u00a3\u00a5\u20a9!@#$/^&*()]"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    .line 345
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v5, "[-\'\":;,?`~\\|><{}]"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    .line 346
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    .line 347
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v5, "]"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    .line 348
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v5, "[bcd\u0111ghlmnpkrstvx]$|ch$|gh$|kh$|ng$|ngh$|nh$|ph$|th$|tr$|gi$|qu$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v3

    goto/16 :goto_0

    .line 351
    :cond_7
    if-le v0, v4, :cond_8

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 352
    .local v1, "lastChar":C
    :goto_1
    invoke-static {v1}, Lcom/diotek/ime/framework/input/Telex/Telex;->isVowel(C)Z

    move-result v2

    if-nez v2, :cond_a

    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-lez v2, :cond_a

    .line 353
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "c$|ch$|p$|t$|m$|n$|ng$|nh$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    goto/16 :goto_0

    .line 351
    .end local v1    # "lastChar":C
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    goto :goto_1

    .line 354
    .restart local v1    # "lastChar":C
    :cond_9
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_a

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1eade\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v3

    goto/16 :goto_0

    .line 358
    :cond_a
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v2, v4, :cond_c

    .line 359
    const-string v2, "i\u00ed\u00ec\u1ec9\u0129\u1ecbe\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7"

    sget-char v5, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v7, :cond_b

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v5, "c$|ng$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    goto/16 :goto_0

    .line 360
    :cond_b
    const-string v2, "y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5"

    sget-char v5, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v7, :cond_c

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "n|nh|ch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "qu"

    sget-object v5, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v3

    goto/16 :goto_0

    .line 362
    :cond_c
    const-string v2, "k"

    sget-object v5, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7][ou]$|[i\u00ed\u00ec\u1ec9\u0129\u1ecb][ae\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$|[i\u00ed\u00ec\u1ec9\u0129\u1ecb][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7][u\u00fa\u00f9\u1ee7\u0169\u1ee5]$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    goto/16 :goto_0

    .line 365
    :cond_d
    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-lez v2, :cond_18

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18

    .line 367
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9]$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "c|nh|ch|p"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    goto/16 :goto_0

    .line 368
    :cond_e
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5][a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead]$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "c|m|p"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    goto/16 :goto_0

    .line 369
    :cond_f
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "c|nh|ch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    goto/16 :goto_0

    .line 370
    :cond_10
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[o\u00f3\u00f2\u1ecf\u00f5\u1ecd][\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5][\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9]$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "nh|ch|p"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v3

    goto/16 :goto_0

    .line 371
    :cond_11
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1eado\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1]$|[u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "nh|ch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v3

    goto/16 :goto_0

    .line 373
    :cond_12
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[i\u00ed\u00ec\u1ec9\u0129\u1ecb]|[\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "ng"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v5, "gi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    move v2, v3

    goto/16 :goto_0

    .line 374
    :cond_13
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "p|t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v3

    goto/16 :goto_0

    .line 375
    :cond_14
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5]$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "c|ng|m"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    goto/16 :goto_0

    .line 377
    :cond_15
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    move v2, v3

    goto/16 :goto_0

    .line 378
    :cond_16
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "nh|ch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v3

    goto/16 :goto_0

    .line 379
    :cond_17
    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v5, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5][y\u00fd\u1ef3\u1ef7\u1ef9\u1ef5][e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    const-string v5, "n|t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    move v2, v3

    goto/16 :goto_0

    :cond_18
    move v2, v4

    .line 381
    goto/16 :goto_0
.end method

.method private static isVowel(C)Z
    .locals 3
    .param p0, "inputChar"    # C

    .prologue
    .line 490
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 491
    .local v0, "lowerChar":C
    const-string v1, "a\u00e1\u00e0\u1ea3\u00e3\u1ea1\u00e2\u1ea5\u1ea7\u1ea9\u1eab\u1ead\u0103\u1eaf\u1eb1\u1eb3\u1eb5\u1eb7o\u00f3\u00f2\u1ecf\u00f5\u1ecd\u00f4\u1ed1\u1ed3\u1ed5\u1ed7\u1ed9\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3u\u00fa\u00f9\u1ee7\u0169\u1ee5\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1e\u00e9\u00e8\u1ebb\u1ebd\u1eb9\u00ea\u1ebf\u1ec1\u1ec3\u1ec5\u1ec7i\u00ed\u00ec\u1ec9\u0129\u1ecby\u00fd\u1ef3\u1ef7\u1ef9\u1ef5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;
    .locals 10
    .param p0, "currentWord"    # Ljava/lang/StringBuilder;
    .param p1, "inputChar"    # C

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 127
    if-nez p1, :cond_1

    .line 236
    .end local p0    # "currentWord":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 129
    .restart local p0    # "currentWord":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_3

    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x8

    if-gt v3, v4, :cond_3

    :cond_2
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_4

    .line 133
    :cond_3
    invoke-static {p1}, Lcom/diotek/ime/framework/input/Telex/Telex;->isToneMark(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0

    .line 139
    :cond_4
    invoke-static {p0}, Lcom/diotek/ime/framework/input/Telex/Telex;->initWordProperties(Ljava/lang/StringBuilder;)V

    .line 141
    const/4 v0, -0x1

    .line 142
    .local v0, "accent":I
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-gtz v3, :cond_5

    const-string v3, "d\u0111D\u0110"

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mLastWord:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_6

    :cond_5
    sget-boolean v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mValidVietWord:Z

    if-eqz v3, :cond_6

    .line 143
    invoke-static {p0, p1}, Lcom/diotek/ime/framework/input/Telex/Telex;->getAccent(Ljava/lang/StringBuilder;C)I

    move-result v0

    .line 146
    :cond_6
    if-ne v0, v6, :cond_7

    invoke-static {p1}, Lcom/diotek/ime/framework/input/Telex/Telex;->isToneMark(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    :cond_7
    if-nez v0, :cond_8

    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    if-eq v3, v6, :cond_8

    .line 149
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    invoke-static {p0, v3}, Lcom/diotek/ime/framework/input/Telex/Telex;->removeToneMark(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0

    .line 152
    :cond_8
    const/16 v3, 0x9

    if-ne v0, v3, :cond_9

    const-string v3, "d\u0111D\u0110"

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mLastWord:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_9

    .line 153
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mIndexOfLastWord:I

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 156
    :cond_9
    if-lt v0, v9, :cond_22

    const/16 v3, 0x8

    if-gt v0, v3, :cond_22

    .line 159
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-lt v3, v8, :cond_e

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->UA_PATTERN:Ljava/util/regex/Pattern;

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 160
    const/4 v3, 0x7

    if-ne v0, v3, :cond_b

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v4, 0xe2

    if-eq v3, v4, :cond_b

    .line 161
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v3, v8, :cond_a

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_1

    .line 162
    :cond_b
    if-ne v0, v9, :cond_d

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v4, 0x1b0

    if-eq v3, v4, :cond_d

    .line 163
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v3, v8, :cond_c

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    :cond_c
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_2

    .line 165
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 169
    :cond_e
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-lt v3, v8, :cond_10

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->EU_PATTERN:Ljava/util/regex/Pattern;

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 170
    const-string v4, "u\u00fa\u00f9\u1ee7\u0169\u1ee5"

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_f

    .line 171
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 173
    :cond_f
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 178
    :cond_10
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-lt v3, v8, :cond_12

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->OAU_PATTERN:Ljava/util/regex/Pattern;

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->UYE_PATTERN:Ljava/util/regex/Pattern;

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 180
    :cond_11
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 184
    :cond_12
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-eq v3, v8, :cond_13

    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_21

    :cond_13
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->UO_PATTERN:Ljava/util/regex/Pattern;

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 185
    if-ne v0, v9, :cond_17

    .line 186
    const-string v3, "\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1"

    sget-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_14

    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v3, v8, :cond_15

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    invoke-static {p0, v3, v4, p1, v7}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    .line 187
    :cond_14
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v3, v8, :cond_16

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 186
    :cond_15
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_3

    .line 187
    :cond_16
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_4

    .line 188
    :cond_17
    const/4 v3, 0x7

    if-ne v0, v3, :cond_20

    .line 189
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    const-string v4, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5][o\u00f3\u00f2\u1ecf\u00f5\u1ecd]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v4, "h$|th$|kh$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_18

    .line 192
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 193
    :cond_18
    const-string v3, "u\u00fa\u00f9\u1ee7\u0169\u1ee5"

    sget-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v6, :cond_19

    const-string v3, "o\u00f3\u00f2\u1ecf\u00f5\u1ecd"

    sget-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mSecondVowel:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_1d

    .line 194
    :cond_19
    const-string v3, "\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1"

    sget-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v6, :cond_1a

    .line 195
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v3, v8, :cond_1b

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v7}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    .line 196
    :cond_1a
    const-string v3, "\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3"

    sget-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mSecondVowel:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 197
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v3, v8, :cond_1c

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v7}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 195
    :cond_1b
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_5

    .line 197
    :cond_1c
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_6

    .line 199
    :cond_1d
    const-string v3, "\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1"

    sget-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_21

    .line 200
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v3, v8, :cond_1e

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v7}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    .line 201
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v3, v8, :cond_1f

    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 200
    :cond_1e
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_7

    .line 201
    :cond_1f
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_8

    .line 205
    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 208
    :cond_21
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 211
    :cond_22
    if-lt v0, v5, :cond_23

    const/4 v3, 0x5

    if-gt v0, v3, :cond_23

    .line 212
    invoke-static {p0}, Lcom/diotek/ime/framework/input/Telex/Telex;->caculateToneMarkPosition(Ljava/lang/StringBuilder;)I

    move-result v2

    .line 213
    .local v2, "toneMarkPosition":I
    if-eq v2, v6, :cond_23

    invoke-static {p0, v2, v0, p1, v5}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietWord(Ljava/lang/StringBuilder;IICZ)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0

    .line 216
    .end local v2    # "toneMarkPosition":I
    :cond_23
    if-ne v0, v6, :cond_25

    sget-boolean v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mValidVietWord:Z

    if-eqz v3, :cond_25

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {p0}, Lcom/diotek/ime/framework/input/Telex/Telex;->initWordProperties(Ljava/lang/StringBuilder;)V

    .line 219
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    sget-object v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/input/Telex/Telex;->needCompleteUO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 220
    sget-object v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/diotek/ime/framework/input/Telex/Telex;->completeUO(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_24
    invoke-static {p0}, Lcom/diotek/ime/framework/input/Telex/Telex;->caculateToneMarkPosition(Ljava/lang/StringBuilder;)I

    move-result v2

    .line 224
    .restart local v2    # "toneMarkPosition":I
    sget-boolean v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mValidVietWord:Z

    if-eqz v3, :cond_0

    if-eq v2, v6, :cond_0

    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    if-eq v3, v6, :cond_0

    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    if-eq v2, v3, :cond_0

    .line 225
    sget v3, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMarkIndex:I

    invoke-static {p0, v3}, Lcom/diotek/ime/framework/input/Telex/Telex;->removeToneMark(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 226
    const/4 v3, 0x0

    sget-char v4, Lcom/diotek/ime/framework/input/Telex/Telex;->mToneMark:C

    invoke-static {v3, v4}, Lcom/diotek/ime/framework/input/Telex/Telex;->getAccent(Ljava/lang/StringBuilder;C)I

    move-result v0

    .line 227
    if-eq v0, v6, :cond_0

    .line 228
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3, v0}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietChar(CI)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 229
    .local v1, "replaceChar":C
    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto/16 :goto_0

    .line 236
    .end local v1    # "replaceChar":C
    .end local v2    # "toneMarkPosition":I
    :cond_25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static needCompleteUO(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "vowel"    # Ljava/lang/String;
    .param p1, "postConsonant"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v0, "[u\u00fa\u00f9\u1ee7\u0169\u1ee5][\u01a1\u1edb\u1edd\u1edf\u1ee1\u1ee3]|[\u01b0\u1ee9\u1eeb\u1eed\u1eef\u1ef1][o\u00f3\u00f2\u1ecf\u00f5\u1ecd]$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "c|p|t|m|n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeToneMark(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "currentWord"    # Ljava/lang/StringBuilder;
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietChar(CI)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 447
    return-object p0
.end method

.method public static setInputMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 276
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    sput v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mInputMode:I

    .line 278
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "telex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mInputMode:I

    goto :goto_0
.end method

.method private static updateWordProperties(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "currentWord"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    .line 421
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    .line 422
    sget v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v0, v2, :cond_1

    .line 423
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    sput-char v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    .line 430
    :cond_0
    :goto_0
    sget v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-lez v0, :cond_6

    .line 431
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    sget v1, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    sget v1, Lcom/diotek/ime/framework/input/Telex/Telex;->mIndexOfLastWord:I

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    sget v2, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    .line 432
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v1, "[+\u00d7\u00f7=%_\u20ac\u00a3\u00a5\u20a9!@#$/^&*()]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    .line 433
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v1, "[-\'\":;,?`~\\|><{}]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    .line 434
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    .line 435
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    .line 436
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPostConsonant:Ljava/lang/String;

    .line 440
    :goto_2
    sget v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mIndexOfLastWord:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mLastWord:Ljava/lang/String;

    .line 441
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mLastWord:Ljava/lang/String;

    invoke-static {v0}, Lcom/diotek/ime/framework/input/Telex/Telex;->isValidVietWord(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mValidVietWord:Z

    .line 442
    return-void

    .line 425
    :cond_1
    sget v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-lt v0, v1, :cond_0

    .line 426
    sget v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    :goto_3
    sput-char v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    .line 427
    sget v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    :goto_4
    sput-char v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mSecondVowel:C

    .line 428
    sget v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelCount:I

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/diotek/ime/framework/input/Telex/Telex;->mSecondVowel:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowels:Ljava/lang/String;

    goto/16 :goto_0

    .line 426
    :cond_2
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_3

    .line 427
    :cond_3
    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_4

    .line 428
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/diotek/ime/framework/input/Telex/Telex;->mFirstVowel:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/diotek/ime/framework/input/Telex/Telex;->mSecondVowel:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mVowelIndexs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 431
    :cond_5
    const-string v0, ""

    goto/16 :goto_1

    .line 438
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/input/Telex/Telex;->mPreConsonant:Ljava/lang/String;

    goto/16 :goto_2
.end method
