.class public interface abstract Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
.super Ljava/lang/Object;
.source "DataBrowseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCancelChosen()V
.end method

.method public abstract onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
.end method

.method public abstract onPickerResult(Landroid/net/Uri;)V
.end method

.method public abstract onPickerResult(Landroid/net/Uri;J)V
.end method
