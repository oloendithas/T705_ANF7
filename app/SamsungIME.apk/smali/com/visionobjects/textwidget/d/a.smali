.class public final Lcom/visionobjects/textwidget/d/a;
.super Ljava/lang/Object;
.source "RecognizerPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/d/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/visionobjects/textwidget/d/a;


# instance fields
.field private a:[Lcom/visionobjects/textwidget/d/a$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/visionobjects/textwidget/d/a$a;

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    .line 51
    return-void
.end method

.method public static a()Lcom/visionobjects/textwidget/d/a;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/visionobjects/textwidget/d/a;->b:Lcom/visionobjects/textwidget/d/a;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/visionobjects/textwidget/d/a;

    invoke-direct {v0}, Lcom/visionobjects/textwidget/d/a;-><init>()V

    sput-object v0, Lcom/visionobjects/textwidget/d/a;->b:Lcom/visionobjects/textwidget/d/a;

    .line 58
    :cond_0
    sget-object v0, Lcom/visionobjects/textwidget/d/a;->b:Lcom/visionobjects/textwidget/d/a;

    return-object v0
.end method

.method private d(IZ)Lcom/visionobjects/textwidget/d/a$a;
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    aget-object v1, v1, v0

    .line 141
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/visionobjects/textwidget/d/a$a;->a:I

    if-ne v2, p1, :cond_0

    iget-boolean v2, v1, Lcom/visionobjects/textwidget/d/a$a;->d:Z

    if-ne v2, p2, :cond_0

    move-object v0, v1

    .line 145
    :goto_1
    return-object v0

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e(IZ)Lcom/visionobjects/textwidget/d/a$a;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 152
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 158
    if-eqz p2, :cond_1

    :try_start_0
    new-instance v1, Lcom/visionobjects/stylus/core/IsolatedInputMethod;

    invoke-direct {v1}, Lcom/visionobjects/stylus/core/IsolatedInputMethod;-><init>()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    new-instance v3, Lcom/visionobjects/textwidget/d/a$a;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/visionobjects/textwidget/d/a$a;-><init>(Lcom/visionobjects/textwidget/d/a;ILcom/visionobjects/stylus/core/InputMethod;Z)V

    aput-object v3, v2, v0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    aget-object v0, v1, v0

    .line 173
    :goto_2
    return-object v0

    .line 158
    :cond_1
    :try_start_1
    new-instance v1, Lcom/visionobjects/stylus/core/CursiveInputMethod;

    invoke-direct {v1}, Lcom/visionobjects/stylus/core/CursiveInputMethod;-><init>()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v1

    const-string v1, "RecognizerPool"

    const-string v3, "StylusCore library is not loaded, you must load the StylusCore native library before using this widget."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1

    .line 152
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_3
    const-string v0, "RecognizerPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create new recognizer for view ID "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", maximum "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " instances allowed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 173
    goto :goto_2
.end method


# virtual methods
.method public final a(IZ)Lcom/visionobjects/stylus/core/InputMethod;
    .locals 1

    .prologue
    .line 67
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/visionobjects/textwidget/d/a;->d(IZ)Lcom/visionobjects/textwidget/d/a$a;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/visionobjects/textwidget/d/a;->e(IZ)Lcom/visionobjects/textwidget/d/a$a;

    move-result-object v0

    .line 89
    :cond_0
    if-eqz v0, :cond_1

    .line 90
    iget-object v0, v0, Lcom/visionobjects/textwidget/d/a$a;->b:Lcom/visionobjects/stylus/core/InputMethod;

    .line 92
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILcom/visionobjects/stylus/core/InputMethodListener;Z)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1, p3}, Lcom/visionobjects/textwidget/d/a;->d(IZ)Lcom/visionobjects/textwidget/d/a$a;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iput-object p2, v0, Lcom/visionobjects/textwidget/d/a$a;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    .line 114
    iget-object v0, v0, Lcom/visionobjects/textwidget/d/a$a;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0, p2}, Lcom/visionobjects/stylus/core/InputMethod;->setListener(Lcom/visionobjects/stylus/core/InputMethodListener;)V

    .line 116
    :cond_0
    return-void
.end method

.method public final b(IZ)Lcom/visionobjects/stylus/core/InputMethodListener;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/visionobjects/textwidget/d/a;->d(IZ)Lcom/visionobjects/textwidget/d/a$a;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    iget-object v0, v0, Lcom/visionobjects/textwidget/d/a$a;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 121
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    aget-object v2, v2, v0

    .line 123
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/visionobjects/textwidget/d/a$a;->a:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Lcom/visionobjects/textwidget/d/a$a;->d:Z

    if-ne v3, p2, :cond_0

    .line 124
    iget-object v3, v2, Lcom/visionobjects/textwidget/d/a$a;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v3, v4}, Lcom/visionobjects/stylus/core/InputMethod;->setListener(Lcom/visionobjects/stylus/core/InputMethodListener;)V

    .line 125
    iget-object v2, v2, Lcom/visionobjects/textwidget/d/a$a;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/InputMethod;->delete()V

    .line 126
    iget-object v2, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    aput-object v4, v2, v0

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 129
    :goto_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/a;->a:[Lcom/visionobjects/textwidget/d/a$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 131
    sput-object v4, Lcom/visionobjects/textwidget/d/a;->b:Lcom/visionobjects/textwidget/d/a;

    .line 133
    :cond_3
    return-void

    .line 129
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
