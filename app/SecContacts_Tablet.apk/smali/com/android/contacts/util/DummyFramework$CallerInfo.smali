.class public Lcom/android/contacts/util/DummyFramework$CallerInfo;
.super Ljava/lang/Object;
.source "DummyFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/DummyFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallerInfo"
.end annotation


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field public static final UNKNOWN_PHONE_NUMBER:Ljava/lang/String; = "-4"


# instance fields
.field final synthetic this$0:Lcom/android/contacts/util/DummyFramework;


# direct methods
.method public constructor <init>(Lcom/android/contacts/util/DummyFramework;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/android/contacts/util/DummyFramework$CallerInfo;->this$0:Lcom/android/contacts/util/DummyFramework;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
