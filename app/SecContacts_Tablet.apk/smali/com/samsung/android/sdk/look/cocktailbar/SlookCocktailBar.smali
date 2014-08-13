.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;
.super Ljava/lang/Object;
.source "SlookCocktailBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;
    }
.end annotation


# static fields
.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0xf

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "CocktailBar"

.field private static sCocktailBar:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;


# instance fields
.field private mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

.field private mContext:Landroid/content/Context;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->sCocktailBar:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mContext:Landroid/content/Context;

    .line 133
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 135
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->sCocktailBar:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->sCocktailBar:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;

    .line 127
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->sCocktailBar:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;

    return-object v0
.end method


# virtual methods
.method public closeCocktail(I)V
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->closeCocktail(I)V

    .line 151
    :cond_0
    return-void
.end method

.method public getCocktailId()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktailId()I

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyCocktailViewDataChanged(II)V

    .line 157
    :cond_0
    return-void
.end method

.method public updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;)V
    .locals 7
    .param p1, "cocktailId"    # I
    .param p2, "info"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    if-nez p2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget v2, p2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->displayPolicy:I

    iget v3, p2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->category:I

    iget v4, p2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->icon:I

    iget-object v5, p2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->contentView:Landroid/widget/RemoteViews;

    iget-object v6, p2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->footerView:Landroid/widget/RemoteViews;

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktail(IIIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method
