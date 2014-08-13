.class public Lcom/android/contacts/list/ContactTileStarredView;
.super Lcom/android/contacts/list/ContactTileView;
.source "ContactTileStarredView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/contacts/list/ContactTileStarredView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileStarredView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/contacts/list/ContactTileStarredView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected isDefaultIconHires()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/contacts/list/ContactTileView;->onFinishInflate()V

    .line 45
    const v0, 0x7f0901d6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileStarredView;->mCallButton:Landroid/widget/ImageButton;

    .line 46
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileStarredView;->mCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileStarredView;->mCallButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/contacts/list/ContactTileStarredView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactTileStarredView$1;-><init>(Lcom/android/contacts/list/ContactTileStarredView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_0
    return-void
.end method
