.class public Lcom/sec/android/app/contacts/list/SelectionMenu;
.super Ljava/lang/Object;
.source "SelectionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectionMenu"


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private final mPopupList:Lcom/sec/android/app/contacts/list/PopupList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "listener"    # Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mButton:Landroid/widget/Button;

    .line 41
    new-instance v0, Lcom/sec/android/app/contacts/list/PopupList;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/contacts/list/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    const v1, 0x7f09001e

    const v2, 0x7f0e034f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/list/PopupList;->addItem(ILjava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/contacts/list/PopupList;->setOnPopupItemClickListener(Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method public clearPopupList()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/PopupList;->clearItems()V

    .line 74
    return-void
.end method

.method public disMiss()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/PopupList;->disMiss()V

    .line 55
    return-void
.end method

.method public hideSelectionButton()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/PopupList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/PopupList;->show()V

    .line 52
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public updateSelectAllMode(ZI)V
    .locals 4
    .param p1, "inSelectAllMode"    # Z
    .param p2, "selectedCount"    # I

    .prologue
    const v3, 0x7f0e034f

    const v2, 0x7f09001e

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/PopupList;->clearItems()V

    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/contacts/list/PopupList;->addItem(ILjava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/contacts/list/PopupList;->addItem(ILjava/lang/String;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mPopupList:Lcom/sec/android/app/contacts/list/PopupList;

    const v1, 0x7f09001f

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SelectionMenu;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0508

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/list/PopupList;->addItem(ILjava/lang/String;)V

    goto :goto_0
.end method
