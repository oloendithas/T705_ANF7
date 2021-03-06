.class public Landroid/webkitsec/HtmlComposerViewUtils;
.super Ljava/lang/Object;
.source "HtmlComposerViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;
    }
.end annotation


# static fields
.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/HtmlComposerViewUtils;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    .line 44
    sget-object v6, Landroid/webkitsec/HtmlComposerViewUtils;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 45
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 46
    .local v3, "match":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 48
    .local v5, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_55

    .line 49
    if-nez v5, :cond_16

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "out":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .restart local v5    # "out":Ljava/lang/StringBuilder;
    :cond_16
    const/4 v1, 0x0

    .line 54
    .local v1, "end":I
    :cond_17
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 55
    .local v7, "start":I
    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 57
    invoke-virtual {p0, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 58
    .local v0, "c":I
    if-ne v0, v9, :cond_56

    .line 60
    const/4 v2, 0x1

    .local v2, "i":I
    sub-int v4, v1, v7

    .local v4, "n":I
    :goto_2f
    if-ge v2, v4, :cond_39

    .line 61
    const-string v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 63
    :cond_39
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_3c
    :goto_3c
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_17

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 78
    .end local v0    # "c":I
    .end local v1    # "end":I
    .end local v7    # "start":I
    :cond_55
    return-object p0

    .line 64
    .restart local v0    # "c":I
    .restart local v1    # "end":I
    .restart local v7    # "start":I
    :cond_56
    const/16 v8, 0xd

    if-eq v0, v8, :cond_5e

    const/16 v8, 0xa

    if-ne v0, v8, :cond_64

    .line 65
    :cond_5e
    const-string v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 66
    :cond_64
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_6e

    .line 67
    const-string v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 68
    :cond_6e
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_78

    .line 69
    const-string v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 70
    :cond_78
    const/16 v8, 0x26

    if-ne v0, v8, :cond_3c

    .line 71
    const-string v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c
.end method
