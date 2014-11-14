.class Lcom/samsung/javaomp/compiler/SourceFormatter$EndOfSourceException;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/javaomp/compiler/SourceFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndOfSourceException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/javaomp/compiler/SourceFormatter$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/SourceFormatter$EndOfSourceException;-><init>()V

    return-void
.end method
