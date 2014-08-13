.class public Lcom/sec/android/app/contacts/editor/RingtoneEditorView;
.super Landroid/widget/LinearLayout;
.source "RingtoneEditorView.java"

# interfaces
.implements Lcom/sec/android/app/contacts/editor/AdditiveSectionView;


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtoneEditorView"


# instance fields
.field private kindTitle:Landroid/widget/TextView;

.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mRingtoneList:Landroid/widget/TextView;

.field private mRingtoneValue:Ljava/lang/String;

.field private mState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method private updateView()V
    .locals 5

    .prologue
    const v4, 0x7f0e0254

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 85
    const v2, 0x7f090363

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 92
    .local v1, "ringtoneUri":Landroid/net/Uri;
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 94
    .local v0, "ringtone":Landroid/media/Ringtone;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Ringtone;->isUriTrue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    .line 103
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 97
    .restart local v0    # "ringtone":Landroid/media/Ringtone;
    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    goto :goto_0

    .line 100
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->kindTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAvailableData()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyToShow()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 2
    .param p1, "ringtone"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->updateView()V

    .line 81
    return-void
.end method

.method public setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "values"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    .line 109
    iput-object p3, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 111
    iput-object p2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 113
    const v0, 0x7f0902d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->kindTitle:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->kindTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const/4 v0, -0x1

    invoke-virtual {p5, p3, p1, p2, v0}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 118
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    .line 123
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->updateView()V

    .line 124
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVisibilitySectionView(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 143
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
