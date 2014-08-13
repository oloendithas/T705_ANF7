.class Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkTitleViewEntry"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4255
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 4256
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 4257
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mLabel:Ljava/lang/CharSequence;

    .line 4258
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    .line 4260
    return-void
.end method

.method static synthetic access$3200(Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    .prologue
    .line 4248
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static forMoreNetworks(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4270
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0206a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0e0189

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static fromAccountType(Landroid/content/Context;Lcom/android/contacts/model/AccountType;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/android/contacts/model/AccountType;

    .prologue
    .line 4263
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 1
    .param p1, "clickedView"    # Landroid/view/View;
    .param p2, "fragmentListener"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .prologue
    .line 4278
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 4280
    :goto_0
    return-void

    .line 4279
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4283
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4287
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
