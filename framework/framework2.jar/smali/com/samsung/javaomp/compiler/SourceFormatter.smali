.class public Lcom/samsung/javaomp/compiler/SourceFormatter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/javaomp/compiler/SourceFormatter$1;,
        Lcom/samsung/javaomp/compiler/SourceFormatter$EndOfSourceException;
    }
.end annotation


# static fields
.field private static final ASTERISK:C = '*'

.field private static final EOL:C = '\n'

.field private static final INDENT:Ljava/lang/String; = "    "

.field private static final L_BRACE:C = '{'

.field private static final R_BRACE:C = '}'

.field private static final SLASH:C = '/'


# instance fields
.field private buf:C

.field private len:I

.field private pos:I

.field private preFormattedSource:Ljava/lang/String;

.field private prefix:Ljava/lang/StringBuilder;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->prefix:Ljava/lang/StringBuilder;

    return-void
.end method

.method private nextChar()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/javaomp/compiler/SourceFormatter$EndOfSourceException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->len:I

    if-ge v0, v1, :cond_35

    iget v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->prefix:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    iget v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->len:I

    if-ge v0, v1, :cond_34

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->preFormattedSource:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    :cond_34
    return-void

    :cond_35
    new-instance v0, Lcom/samsung/javaomp/compiler/SourceFormatter$EndOfSourceException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/compiler/SourceFormatter$EndOfSourceException;-><init>(Lcom/samsung/javaomp/compiler/SourceFormatter$1;)V

    throw v0
.end method

.method private skipUntilBraceOrEOF()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/javaomp/compiler/SourceFormatter$EndOfSourceException;
        }
    .end annotation

    const/16 v2, 0x2f

    :goto_2
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_5a

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5a

    iget v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->len:I

    if-ge v0, v1, :cond_5a

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    if-ne v0, v2, :cond_20

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->nextChar()V

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    sparse-switch v0, :sswitch_data_5c

    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->nextChar()V

    goto :goto_2

    :sswitch_24
    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->nextChar()V

    :goto_27
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->len:I

    if-ge v0, v1, :cond_20

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->nextChar()V

    goto :goto_27

    :sswitch_37
    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->nextChar()V

    :goto_3a
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->preFormattedSource:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_56

    :cond_4c
    iget v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->len:I

    if-ge v0, v1, :cond_56

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->nextChar()V

    goto :goto_3a

    :cond_56
    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->nextChar()V

    goto :goto_20

    :cond_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        0x2a -> :sswitch_37
        0x2f -> :sswitch_24
    .end sparse-switch
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "\n\t*"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n *"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n\n\n*"

    const-string v2, "\n\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " ;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " *, *"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t\t*"

    const-string v2, "    "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->preFormattedSource:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->preFormattedSource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->len:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->preFormattedSource:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    :goto_46
    iget v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->pos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->len:I

    if-ge v0, v1, :cond_54

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->skipUntilBraceOrEOF()V

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->buf:C

    packed-switch v0, :pswitch_data_ce

    :cond_54
    :pswitch_54
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5a
    return-object p1

    :pswitch_5b
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->prefix:Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->nextChar()V
    :try_end_65
    .catch Lcom/samsung/javaomp/compiler/SourceFormatter$EndOfSourceException; {:try_start_0 .. :try_end_65} :catch_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_c5

    goto :goto_46

    :catch_66
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Source partially formatted."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5a

    :pswitch_75
    :try_start_75
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->prefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_a9

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, "    "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_a9
    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter;->nextChar()V

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->prefix:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->prefix:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, "    "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/SourceFormatter;->prefix:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_c4
    .catch Lcom/samsung/javaomp/compiler/SourceFormatter$EndOfSourceException; {:try_start_75 .. :try_end_c4} :catch_66
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_c4} :catch_c5

    goto :goto_46

    :catch_c5
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Source formatting unsuccessful."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5a

    :pswitch_data_ce
    .packed-switch 0x7b
        :pswitch_5b
        :pswitch_54
        :pswitch_75
    .end packed-switch
.end method
