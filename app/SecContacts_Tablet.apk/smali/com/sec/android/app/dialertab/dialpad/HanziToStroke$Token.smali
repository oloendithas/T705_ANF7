.class public Lcom/sec/android/app/dialertab/dialpad/HanziToStroke$Token;
.super Ljava/lang/Object;
.source "HanziToStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/HanziToStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final ASCII:I = 0x1

.field public static final SEPARATOR:Ljava/lang/String; = " "

.field public static final STROKE:I = 0x2

.field public static final UNKNOWN:I = 0x3


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
