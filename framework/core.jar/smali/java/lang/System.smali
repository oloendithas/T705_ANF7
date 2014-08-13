.class public final Ljava/lang/System;
.super Ljava/lang/Object;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/System$SystemEnvironment;
    }
.end annotation


# static fields
.field public static final err:Ljava/io/PrintStream;

.field public static final in:Ljava/io/InputStream;

.field private static final lineSeparator:Ljava/lang/String;

.field public static final out:Ljava/io/PrintStream;

.field private static systemProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 90
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 91
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 92
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
.end method

.method private static checkPropertyName(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 450
    if-nez p0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1
    return-void
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static console()Ljava/io/Console;
    .locals 1

    .prologue
    .line 465
    invoke-static {}, Ljava/io/Console;->getConsole()Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    .line 191
    return-void
.end method

.method public static gc()V
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 200
    return-void
.end method

.method public static getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 250
    invoke-static {}, Ljava/lang/System;->initSystemProperties()V

    .line 252
    :cond_0
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityManager()Ljava/lang/SecurityManager;
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    if-nez p0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getenv()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 219
    .local v1, "entry":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 220
    .local v3, "index":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 221
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "entry":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_1
    new-instance v6, Ljava/lang/System$SystemEnvironment;

    invoke-direct {v6, v5}, Ljava/lang/System$SystemEnvironment;-><init>(Ljava/util/Map;)V

    return-object v6
.end method

.method public static native identityHashCode(Ljava/lang/Object;)I
.end method

.method public static inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static initSystemProperties()V
    .locals 11

    .prologue
    .line 256
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    .line 257
    .local v8, "runtime":Ldalvik/system/VMRuntime;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 259
    .local v4, "p":Ljava/util/Properties;
    const-string v7, "http://www.android.com/"

    .line 260
    .local v7, "projectUrl":Ljava/lang/String;
    const-string v6, "The Android Project"

    .line 262
    .local v6, "projectName":Ljava/lang/String;
    const-string v9, "java.boot.class.path"

    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v9, "java.class.path"

    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v9, "java.class.version"

    const-string v10, "50.0"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v9, "java.compiler"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v9, "java.ext.dirs"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v9, "java.version"

    const-string v10, "0"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v9, "JAVA_HOME"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "javaHome":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 276
    const-string v2, "/system"

    .line 278
    :cond_0
    const-string v9, "java.home"

    invoke-virtual {v4, v9, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v9, "java.io.tmpdir"

    const-string v10, "/tmp"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v9, "LD_LIBRARY_PATH"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "ldLibraryPath":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 286
    const-string v9, "java.library.path"

    invoke-virtual {v4, v9, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_1
    const-string v9, "java.specification.name"

    const-string v10, "Dalvik Core Library"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v9, "java.specification.vendor"

    invoke-virtual {v4, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v9, "java.specification.version"

    const-string v10, "0.9"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v9, "java.vendor"

    invoke-virtual {v4, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v9, "java.vendor.url"

    invoke-virtual {v4, v9, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v9, "java.vm.name"

    const-string v10, "Dalvik"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v9, "java.vm.specification.name"

    const-string v10, "Dalvik Virtual Machine Specification"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v9, "java.vm.specification.vendor"

    invoke-virtual {v4, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v9, "java.vm.specification.version"

    const-string v10, "0.9"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v9, "java.vm.vendor"

    invoke-virtual {v4, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v9, "java.vm.version"

    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v9, "file.separator"

    const-string v10, "/"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v9, "line.separator"

    const-string v10, "\n"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v9, "path.separator"

    const-string v10, ":"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v9, "java.runtime.name"

    const-string v10, "Android Runtime"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v9, "java.runtime.version"

    const-string v10, "0.9"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v9, "java.vm.vendor.url"

    invoke-virtual {v4, v9, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v9, "file.encoding"

    const-string v10, "UTF-8"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v9, "user.language"

    const-string v10, "en"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v9, "user.region"

    const-string v10, "US"

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :try_start_0
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10}, Llibcore/io/Os;->getuid()I

    move-result v10

    invoke-interface {v9, v10}, Llibcore/io/Os;->getpwuid(I)Llibcore/io/StructPasswd;

    move-result-object v5

    .line 316
    .local v5, "passwd":Llibcore/io/StructPasswd;
    const-string v9, "user.home"

    iget-object v10, v5, Llibcore/io/StructPasswd;->pw_dir:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v9, "user.name"

    iget-object v10, v5, Llibcore/io/StructPasswd;->pw_name:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9}, Llibcore/io/Os;->uname()Llibcore/io/StructUtsname;

    move-result-object v1

    .line 323
    .local v1, "info":Llibcore/io/StructUtsname;
    const-string v9, "os.arch"

    iget-object v10, v1, Llibcore/io/StructUtsname;->machine:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v9, "os.name"

    iget-object v10, v1, Llibcore/io/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v9, "os.version"

    iget-object v10, v1, Llibcore/io/StructUtsname;->release:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v9, "android.icu.library.version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v9, "android.icu.unicode.version"

    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v9, "android.icu.cldr.version"

    invoke-static {}, Llibcore/icu/ICU;->getCldrVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 335
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 337
    sput-object v4, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    .line 338
    return-void

    .line 318
    .end local v1    # "info":Llibcore/io/StructUtsname;
    .end local v5    # "passwd":Llibcore/io/StructPasswd;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "exception":Llibcore/io/ErrnoException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 513
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2
    .param p0, "libName"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 527
    return-void
.end method

.method private static native log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 533
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 540
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 541
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 547
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 554
    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 561
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 568
    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    return-void
.end method

.method public static native mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nanoTime()J
.end method

.method private static parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .locals 8
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "assignments"    # [Ljava/lang/String;

    .prologue
    .line 351
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 352
    .local v1, "assignment":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 353
    .local v5, "split":I
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p0, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "assignment":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "split":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static runFinalization()V
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 579
    return-void
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .param p0, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 593
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    .line 594
    return-void
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "newErr"    # Ljava/io/PrintStream;

    .prologue
    .line 126
    const-string v0, "err"

    const-string v1, "Ljava/io/PrintStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method private static native setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "newIn"    # Ljava/io/InputStream;

    .prologue
    .line 103
    const-string v0, "in"

    const-string v1, "Ljava/io/InputStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "newOut"    # Ljava/io/PrintStream;

    .prologue
    .line 114
    const-string v0, "out"

    const-string v1, "Ljava/io/PrintStream;"

    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 0
    .param p0, "p"    # Ljava/util/Properties;

    .prologue
    .line 602
    sput-object p0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    .line 603
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 431
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setSecurityManager(Ljava/lang/SecurityManager;)V
    .locals 1
    .param p0, "sm"    # Ljava/lang/SecurityManager;

    .prologue
    .line 617
    if-eqz p0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 620
    :cond_0
    return-void
.end method

.method private static native specialProperties()[Ljava/lang/String;
.end method
