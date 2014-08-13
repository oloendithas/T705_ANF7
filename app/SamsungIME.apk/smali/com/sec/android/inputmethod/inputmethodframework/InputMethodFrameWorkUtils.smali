.class public Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;
.super Ljava/lang/Object;
.source "InputMethodFrameWorkUtils.java"


# static fields
.field private static mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field private static mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrnetInputMethodInfo(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v4, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v4, :cond_1

    .line 25
    invoke-static {p0}, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 26
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 28
    .local v3, "inputMethodInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 29
    .local v2, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    sput-object v2, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 36
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "inputMethodInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_0
.end method

.method public static getImeSubtype(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9
    .param p0, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    .line 52
    if-nez p1, :cond_0

    move-object v3, v5

    .line 71
    :goto_0
    return-object v3

    .line 55
    :cond_0
    move-object v2, p0

    .line 56
    .local v2, "imInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 57
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 58
    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 59
    .local v3, "inputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "localeInputMethodSubtype":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_1

    .line 62
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 65
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    const-string v5, "InputMethodFrameWorkUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InputMethodSubtype is found as local:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v3    # "inputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "localeInputMethodSubtype":Ljava/lang/String;
    :cond_3
    const-string v6, "InputMethodFrameWorkUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InputMethodSubtype is not found as local:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 71
    goto :goto_0
.end method

.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v0, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 18
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static setCurrentInputMethodSubtype(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->getCurrnetInputMethodInfo(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 42
    .local v0, "imInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v0, p1}, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->getImeSubtype(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 43
    .local v1, "inputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v1, :cond_0

    .line 44
    invoke-static {p0}, Lcom/sec/android/inputmethod/inputmethodframework/InputMethodFrameWorkUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    .line 45
    const-string v2, "InputMethodFrameWorkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputMethodSubtype is set as local:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v2, "InputMethodFrameWorkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputMethodSubtype is not defined for local:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
