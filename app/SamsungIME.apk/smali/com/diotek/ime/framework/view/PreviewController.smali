.class public Lcom/diotek/ime/framework/view/PreviewController;
.super Ljava/lang/Object;
.source "PreviewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;
    }
.end annotation


# static fields
.field public static USE_TEXT_BALLOON_DRAWABLE:Z

.field private static mInstance:Lcom/diotek/ime/framework/view/PreviewController;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/framework/view/PreviewController;->USE_TEXT_BALLOON_DRAWABLE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputmethod"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Lcom/diotek/ime/framework/view/PreviewController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->TAG:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/diotek/ime/framework/view/PreviewController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputmode"    # I

    .prologue
    .line 181
    sget-object v0, Lcom/diotek/ime/framework/view/PreviewController;->mInstance:Lcom/diotek/ime/framework/view/PreviewController;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/diotek/ime/framework/view/PreviewController;

    invoke-direct {v0, p0, p1}, Lcom/diotek/ime/framework/view/PreviewController;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/diotek/ime/framework/view/PreviewController;->mInstance:Lcom/diotek/ime/framework/view/PreviewController;

    .line 184
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/view/PreviewController;->mInstance:Lcom/diotek/ime/framework/view/PreviewController;

    return-object v0
.end method


# virtual methods
.method public getAdjVerticalGap()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->getAdjVerticalGap()I

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdjVerticalGapForBalloonDrawable()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->getAdjVerticalGapForBalloonDrawable()I

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewPaddingBottom()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->getPreviewPaddingBottom()I

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewPaddingRight()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->getPreviewPaddingRight()I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputmethod"    # I

    .prologue
    .line 166
    iput-object p1, p0, Lcom/diotek/ime/framework/view/PreviewController;->mContext:Landroid/content/Context;

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    .line 173
    :cond_0
    new-instance v0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    invoke-direct {v0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    .line 174
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PreviewController;->mPreviewParams:Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;

    invoke-virtual {v0, p2}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->initParams(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method
