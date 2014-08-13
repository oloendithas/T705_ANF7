.class public Lcom/sec/android/app/contacts/editor/VibrationEditorView;
.super Landroid/widget/LinearLayout;
.source "VibrationEditorView.java"

# interfaces
.implements Lcom/sec/android/app/contacts/editor/AdditiveSectionView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VibrationEditorView"


# instance fields
.field private kindTitle:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDefaultVibName:Ljava/lang/String;

.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mVibTextView:Landroid/widget/TextView;

.field private mVibUriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mDefaultVibName:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->kindTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVibUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibUriString:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasAvailableData()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mDefaultVibName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

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
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 77
    :cond_0
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
    .line 135
    iput-object p3, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 137
    iput-object p2, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 139
    const v0, 0x7f0902d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->kindTitle:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->kindTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v0, -0x1

    invoke-virtual {p5, p3, p1, p2, v0}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 144
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "sec_custom_vibration"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibUriString:Ljava/lang/String;

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->updateView()V

    .line 150
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibUriString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVibration(Ljava/lang/String;)V
    .locals 2
    .param p1, "vibrationUri"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibUriString:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v1, "sec_custom_vibration"

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->updateView()V

    .line 88
    return-void
.end method

.method public setVisibilitySectionView(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 169
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    return-void

    .line 169
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateView()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v8, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mDefaultVibName:Ljava/lang/String;

    .line 93
    .local v8, "customVibrationName":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 94
    const v0, 0x7f09036a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibTextView:Landroid/widget/TextView;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    const-string v6, "vibration_name"

    .line 101
    .local v6, "VIBRATION_NAME":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "vibration_name"

    aput-object v4, v2, v0

    .line 105
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, "customVibrationUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 109
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 110
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 111
    const-string v0, "vibration_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 113
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iput-object v3, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibUriString:Ljava/lang/String;

    .line 119
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 125
    .end local v1    # "customVibrationUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "VIBRATION_NAME":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void

    .line 117
    .restart local v1    # "customVibrationUri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "VIBRATION_NAME":Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_3
    iput-object v3, p0, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->mVibUriString:Ljava/lang/String;

    goto :goto_0
.end method
