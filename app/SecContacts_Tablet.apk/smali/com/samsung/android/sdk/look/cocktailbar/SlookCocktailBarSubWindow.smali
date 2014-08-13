.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBarSubWindow;
.super Ljava/lang/Object;
.source "SlookCocktailBarSubWindow.java"


# static fields
.field private static mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBarSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubWindow(Landroid/app/Activity;)Landroid/view/Window;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBarSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getSubWindow()Landroid/view/Window;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSubContentView(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "layoutResID"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBarSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setSubContentView(I)V

    .line 35
    :cond_0
    return-void
.end method

.method public static setSubContentView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBarSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setSubContentView(Landroid/view/View;)V

    .line 41
    :cond_0
    return-void
.end method
