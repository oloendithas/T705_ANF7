.class public Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.super Landroid/content/BroadcastReceiver;
.source "SlookCocktailProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailId"    # I

    .prologue
    .line 65
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    return-void
.end method

.method public onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;Landroid/view/DragEvent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slookCocktailBar"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 74
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 37
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v4, "cocktailId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    const-string v4, "cocktailId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 39
    .local v1, "cocktailId":I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;I)V

    .line 59
    .end local v1    # "cocktailId":I
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v4, "com.samsung.android.cocktail.action.COCKTAIL_DELETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 43
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v4, "cocktailId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    const-string v4, "cocktailId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 45
    .restart local v1    # "cocktailId":I
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDeleted(Landroid/content/Context;I)V

    goto :goto_0

    .line 47
    .end local v1    # "cocktailId":I
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string v4, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_3
    const-string v4, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_4
    const-string v4, "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 53
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v4, "com.samsung.android.intent.extra.DRAG_EVENT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const-string v4, "com.samsung.android.intent.extra.DRAG_EVENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/DragEvent;

    .line 56
    .local v2, "dragEvent":Landroid/view/DragEvent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;Landroid/view/DragEvent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slookCocktailBar"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;
    .param p3, "cocktailId"    # I

    .prologue
    .line 62
    return-void
.end method
