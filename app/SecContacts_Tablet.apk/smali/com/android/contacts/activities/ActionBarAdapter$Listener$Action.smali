.class public abstract Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation


# static fields
.field public static final CHANGE_SEARCH_QUERY:I = 0x0

.field public static final DELETE_CONTACTS_CANCEL:I = 0x4

.field public static final DELETE_CONTACTS_DONE:I = 0x3

.field public static final START_SEARCH_MODE:I = 0x1

.field public static final STOP_SEARCH_MODE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
