.class public Lcom/arm/streamline/StreamlineAnnotate;
.super Ljava/lang/Object;
.source "StreamlineAnnotate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arm/streamline/StreamlineAnnotate$Color;
    }
.end annotation


# static fields
.field public static final BLACK:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final BLUE:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final CYAN:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final DKGRAY:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field private static final ESCAPE_CODE:B = 0x1ct

.field private static final FILE:Ljava/io/FileOutputStream;

.field public static final GREEN:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final LTGRAY:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field private static final MARKER_ANNOTATION:B = 0x5t

.field private static final NAME_CHANNEL_ANNOTATION:B = 0x7t

.field private static final NAME_GROUP_ANNOTATION:B = 0x8t

.field private static final OUT:Ljava/io/OutputStream;

.field public static final PURPLE:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final RED:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field private static final STRING_ANNOTATION:B = 0x6t

.field private static final VISUAL_ANNOTATION:B = 0x4t

.field public static final WHITE:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final YELLOW:Lcom/arm/streamline/StreamlineAnnotate$Color;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0xff

    const/4 v4, 0x0

    .line 9
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v3, v4, v4}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->RED:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 10
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v4, v4, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->BLUE:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 11
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v4, v3, v4}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->GREEN:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 12
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v3, v4, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->PURPLE:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 13
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v3, v3, v4}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->YELLOW:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 14
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v4, v3, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->CYAN:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 15
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(I)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->WHITE:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 16
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    const/16 v3, 0xbb

    invoke-direct {v2, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(I)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->LTGRAY:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 17
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    const/16 v3, 0x55

    invoke-direct {v2, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(I)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->DKGRAY:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 18
    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v4}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(I)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->BLACK:Lcom/arm/streamline/StreamlineAnnotate$Color;

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "file":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 41
    .local v1, "out":Ljava/io/OutputStream;
    sput-object v1, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    .line 42
    sput-object v0, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    return-void
.end method

.method public static final annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V
    .locals 4
    .param p0, "channel"    # I
    .param p1, "color"    # Lcom/arm/streamline/StreamlineAnnotate$Color;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v2, :cond_3

    .line 85
    if-eqz p2, :cond_4

    .line 86
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 87
    .local v0, "msgData":[B
    array-length v1, v0

    .line 91
    .end local v0    # "msgData":[B
    .local v1, "msgLength":I
    :goto_0
    if-eqz p1, :cond_0

    .line 92
    add-int/lit8 v1, v1, 0x4

    .line 94
    :cond_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 95
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 96
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 97
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 98
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 99
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    ushr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 100
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 101
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 102
    if-eqz p1, :cond_1

    .line 103
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 104
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v3, p1, Lcom/arm/streamline/StreamlineAnnotate$Color;->red:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 105
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v3, p1, Lcom/arm/streamline/StreamlineAnnotate$Color;->green:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 106
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v3, p1, Lcom/arm/streamline/StreamlineAnnotate$Color;->blue:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 108
    :cond_1
    if-eqz p2, :cond_2

    .line 109
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 111
    :cond_2
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 113
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "msgLength":I
    :cond_3
    :goto_1
    return-void

    .line 89
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "msgLength":I
    goto/16 :goto_0

    .line 114
    .end local v1    # "msgLength":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static final annotate(ILjava/lang/String;)V
    .locals 1
    .param p0, "channel"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static final annotate(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V
    .locals 1
    .param p0, "color"    # Lcom/arm/streamline/StreamlineAnnotate$Color;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static final annotate(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static final end()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x0

    invoke-static {v0, v1, v1}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static final end(I)V
    .locals 1
    .param p0, "channel"    # I

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-static {p0, v0, v0}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static final marker()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-static {v0, v0}, Lcom/arm/streamline/StreamlineAnnotate;->marker(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public static final marker(Lcom/arm/streamline/StreamlineAnnotate$Color;)V
    .locals 1
    .param p0, "color"    # Lcom/arm/streamline/StreamlineAnnotate$Color;

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/arm/streamline/StreamlineAnnotate;->marker(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static final marker(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V
    .locals 5
    .param p0, "color"    # Lcom/arm/streamline/StreamlineAnnotate$Color;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 302
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v3, :cond_3

    .line 305
    if-eqz p1, :cond_4

    .line 306
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 307
    .local v1, "msgData":[B
    array-length v2, v1

    .line 311
    .end local v1    # "msgData":[B
    .local v2, "msgLength":I
    :goto_0
    if-eqz p0, :cond_0

    .line 312
    add-int/lit8 v2, v2, 0x4

    .line 314
    :cond_0
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 315
    .local v0, "header":[B
    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput-byte v4, v0, v3

    .line 316
    const/4 v3, 0x1

    const/4 v4, 0x5

    aput-byte v4, v0, v3

    .line 317
    const/4 v3, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 318
    const/4 v3, 0x3

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 319
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 320
    if-eqz p0, :cond_1

    .line 321
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 322
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v4, p0, Lcom/arm/streamline/StreamlineAnnotate$Color;->red:I

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 323
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v4, p0, Lcom/arm/streamline/StreamlineAnnotate$Color;->green:I

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 324
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v4, p0, Lcom/arm/streamline/StreamlineAnnotate$Color;->blue:I

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 326
    :cond_1
    if-eqz p1, :cond_2

    .line 327
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 329
    :cond_2
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 331
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "header":[B
    .end local v2    # "msgLength":I
    :cond_3
    :goto_1
    return-void

    .line 309
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "msgLength":I
    goto :goto_0

    .line 332
    .end local v2    # "msgLength":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static final marker(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/arm/streamline/StreamlineAnnotate;->marker(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static nameChannel(IILjava/lang/String;)V
    .locals 4
    .param p0, "channel"    # I
    .param p1, "group"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v2, :cond_1

    .line 152
    if-eqz p2, :cond_2

    .line 153
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 154
    .local v0, "msgData":[B
    array-length v1, v0

    .line 158
    .end local v0    # "msgData":[B
    .local v1, "nameLength":I
    :goto_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 159
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 160
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 161
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 162
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 163
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    ushr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 164
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 165
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 166
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 167
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 168
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 169
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 170
    if-eqz p2, :cond_0

    .line 171
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 173
    :cond_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 175
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "nameLength":I
    :cond_1
    :goto_1
    return-void

    .line 156
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nameLength":I
    goto/16 :goto_0

    .line 176
    .end local v1    # "nameLength":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static nameGroup(ILjava/lang/String;)V
    .locals 4
    .param p0, "group"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v2, :cond_1

    .line 192
    if-eqz p1, :cond_2

    .line 193
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 194
    .local v0, "msgData":[B
    array-length v1, v0

    .line 198
    .end local v0    # "msgData":[B
    .local v1, "nameLength":I
    :goto_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 199
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 200
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 201
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 202
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 203
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    ushr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 204
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 205
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 206
    if-eqz p1, :cond_0

    .line 207
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 209
    :cond_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 211
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "nameLength":I
    :cond_1
    :goto_1
    return-void

    .line 196
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nameLength":I
    goto :goto_0

    .line 212
    .end local v1    # "nameLength":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static final visualAnnotate(Ljava/lang/String;[B)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "imageData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 234
    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v4, :cond_3

    .line 237
    if-eqz p0, :cond_4

    .line 238
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 239
    .local v2, "msgData":[B
    array-length v3, v2

    .line 243
    .end local v2    # "msgData":[B
    .local v3, "msgLength":I
    :goto_0
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 244
    .local v0, "header":[B
    const/4 v4, 0x0

    const/16 v5, 0x1c

    aput-byte v5, v0, v4

    .line 245
    const/4 v4, 0x1

    const/4 v5, 0x4

    aput-byte v5, v0, v4

    .line 246
    const/4 v4, 0x2

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 247
    const/4 v4, 0x3

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 248
    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 249
    if-eqz p0, :cond_0

    .line 250
    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 252
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    .line 253
    .local v1, "imgLength":I
    :cond_1
    const/4 v4, 0x0

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 254
    const/4 v4, 0x1

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 255
    const/4 v4, 0x2

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 256
    const/4 v4, 0x3

    ushr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 257
    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 258
    if-lez v1, :cond_2

    .line 259
    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 261
    :cond_2
    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 263
    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "header":[B
    .end local v1    # "imgLength":I
    .end local v3    # "msgLength":I
    :cond_3
    :goto_1
    return-void

    .line 241
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "msgLength":I
    goto :goto_0

    .line 264
    .end local v3    # "msgLength":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static final visualAnnotate([B)V
    .locals 1
    .param p0, "imageData"    # [B

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/arm/streamline/StreamlineAnnotate;->visualAnnotate(Ljava/lang/String;[B)V

    .line 225
    return-void
.end method
